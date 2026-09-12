import { TheCatEntityBase } from '../TheCatEntityBase';
import type { TheCatSDK } from '../TheCatSDK';
import type { Control } from '../types';
import type { Search, SearchListMatch } from '../TheCatTypes';
declare class SearchEntity extends TheCatEntityBase<Search> {
    constructor(client: TheCatSDK, entopts: any);
    make(this: SearchEntity): SearchEntity;
    list(this: any, reqmatch?: SearchListMatch, ctrl?: Control): Promise<SearchEntity[]>;
}
export { SearchEntity };
