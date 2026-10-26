from setuptools import setup, find_packages

setup(
    name='apiverve_asnlookup',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='ASN Lookup resolves any Autonomous System Number to its registered organization name and numeric identifier. Paid plans add the registry handle, country code, and announced IP range statistics.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/asnlookup?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
