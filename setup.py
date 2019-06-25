import fort
import setuptools

with open('README.md', 'r') as f:
    long_description = f.read()

setuptools.setup(
    name='fort',
    version=fort.__version__,
    description='A wrapper around some common database libraries',
    long_description=long_description,
    long_description_content_type='text/markdown',
    url='https://github.com/williamjacksn/fort',
    author='William Jackson',
    author_email='william@subtlecoolness.com',
    license='MIT',
    packages=['fort']
)
