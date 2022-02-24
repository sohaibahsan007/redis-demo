import {inject, lifeCycleObserver, LifeCycleObserver} from '@loopback/core';
import {juggler} from '@loopback/repository';

const config = {
  name: 'cache',
  connector: 'kv-redis',
  host: 'localhost',
  port: 6379,
  db: 0,
};

@lifeCycleObserver('datasource')
export class CacheDataSource
  extends juggler.DataSource
  implements LifeCycleObserver
{
  static dataSourceName = 'cache';
  static readonly defaultConfig = config;

  constructor(
    @inject('datasources.config.cache', {optional: true})
    dsConfig: object = config,
  ) {
    super(dsConfig);
  }
}
