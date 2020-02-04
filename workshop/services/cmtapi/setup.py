from setuptools import setup, find_packages

setup(
    name = "cmtapi",
    description = "cmtapi",
    version = "1.0",
    author = 'Max Andersson',
    author_email = 'max@fitzr.net',
    url = 'https://github.com/maxandersson/yhl18cmt',
    package_dir={'': 'src'},
    include_package_data = True,
    packages=find_packages(where='src'),
)