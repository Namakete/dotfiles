import { Observable } from 'rxjs';
/**
 *
 * if inner observable hasn't complete, and source observable trigger new value, the
 * inner observable's value will be abandon. and after inner observable complete the
 * lastest source observable value will be trigger.
 *
 */
export declare function waitMap<T, K>(fn: (res: T) => Observable<K>): (obs: Observable<T>) => Observable<K>;
