import os

EXTRA_VARIABLES = {
    'IP_PREFIX': os.getenv('IP_PREFIX', '10.2.2.'),
    'LAST_OCTET_START': int(os.getenv('LAST_OCTET_START', 198)),
    'LAST_OCTET_END': int(os.getenv('LAST_OCTET_END', 229))+1,
    'ES_HOST': os.getenv('ES_HOST', 'http://10.2.2.231:9200')
}
