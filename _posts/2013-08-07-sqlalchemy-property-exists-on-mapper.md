Title: "SqlAlchemy Relationship Error: 'property of that name exists on mapper'"
Date: 2013-08-07 06:43

### The Setup

I'm writing a web app in python with [Flask](http://flask.pocoo.org) and [SqlAlchemy](sqlalchemy.org) with MySQL.

[the solution...](#fixed)

### The Code

Starting with the following (slightly snipped for brevity) python/SqlAlchemy code in `<project>/markbox/models.py`:

    class UserBlog(ModelBase):
	    __tablename__ = 'user_blog'
	
	    id = sa.Column(sa.Integer, primary_key=True)
	    uid = sa.Column(strcol)
	    # blog title
	    name = sa.Column(strcol)

	    # returns a query => blog.sync_stats.all()
	    sync_stats = relationship(
	    	'models.SyncStats', backref='blog',
	        lazy='dynamic')
	

	class SyncStats(ModelBase):
	    """
	    Store various statistics about sync operations
	    """
	    __tablename__ = 'system_syncstats'
	
	    id = sa.Column(sa.Integer, primary_key=True)
	    uid = sa.Column(strcol, sa.ForeignKey('user_blogsettings.uid'))
	
And this code in `<project>/markbox/tools/test.py`:

    import sys
    import os
    
    sys.path.append(os.path.abspath('.'))
    sys.path.append(os.path.abspath('markbox'))
    print sys.path
    
    from markbox.models import UserBlog, SyncStats
    
    from sqlalchemy import create_engine
    from sqlalchemy.ext.declarative import declarative_base
    from sqlalchemy import Column, Integer, String, DateTime
    from sqlalchemy.orm import sessionmaker
    
    SQLALCHEMY_DATABASE_URI = "mysql://markbox_user:markbox@localhost/markbox"
    
    engine = create_engine(SQLALCHEMY_DATABASE_URI, echo='debug')
    Session = sessionmaker(bind=engine)
    session = Session()
        
    if __name__ == '__main__':
        blog = UserBlog.query.limit(1)
    
### The Error

When run from the command line in &lt;project>:

`% python markbox/tools/test.py`

I get:

	['/Users/sivy/Projects/personal/markbox/markbox/tools', ..., '/Users/sivy/Projects/personal/markbox', '/Users/sivy/Projects/personal/markbox/markbox']
	Traceback (most recent call last):
	  File "markbox/tools/test.py", line 25, in <module>
	    blog = UserBlog.query.limit(1)
	  File "/Users/sivy/.virtualenvs/markbox/lib/python2.7/site-packages/sqlalchemy/orm/scoping.py", line 131, in __get__
	    mapper = class_mapper(owner)
	  File "/Users/sivy/.virtualenvs/markbox/lib/python2.7/site-packages/sqlalchemy/orm/util.py", line 1112, in class_mapper
	    mapper = _inspect_mapped_class(class_, configure=configure)
	  File "/Users/sivy/.virtualenvs/markbox/lib/python2.7/site-packages/sqlalchemy/orm/util.py", line 1045, in _inspect_mapped_class
	    mapperlib.configure_mappers()
	  File "/Users/sivy/.virtualenvs/markbox/lib/python2.7/site-packages/sqlalchemy/orm/mapper.py", line 2122, in configure_mappers
	    mapper._post_configure_properties()
	  File "/Users/sivy/.virtualenvs/markbox/lib/python2.7/site-packages/sqlalchemy/orm/mapper.py", line 1244, in _post_configure_properties
	    prop.init()
	  File "/Users/sivy/.virtualenvs/markbox/lib/python2.7/site-packages/sqlalchemy/orm/interfaces.py", line 231, in init
	    self.do_init()
	  File "/Users/sivy/.virtualenvs/markbox/lib/python2.7/site-packages/sqlalchemy/orm/properties.py", line 1031, in do_init
	    self._generate_backref()
	  File "/Users/sivy/.virtualenvs/markbox/lib/python2.7/site-packages/sqlalchemy/orm/properties.py", line 1220, in _generate_backref
	    self, m))
	sqlalchemy.exc.ArgumentError: Error creating backref 'blog' on relationship 'UserBlog.sync_stats': property of that name exists on mapper 'Mapper|SyncStats|system_syncstats'

### What I've Done

I've already confirmed that:

* the SyncStats model has no "blog" property (it used to have a method, decorated with @property).
* I've deleted any existing *.pyc files to make sure that the interpreter is not picking up pre-compiled code.

### The solution

<span id="fixed"></span>So, the problem turned out to be that the models were being imported from two paths:

    from models import UserBlog

and later:

    from markbox.models import UserBlog

This caused the intilization code to be run twice, and the resulting error.