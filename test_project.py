import logging

from run import app


def test_logging():
    print('print before logging')
    print(app.config.__dict__)
    logger = logging.getLogger()
    logger.info('test info')
    logger.debug('test debug')
    logger.warning('test warning')
    logger.critical('test critical')
    print('print after logging')
    assert 1 == 1
