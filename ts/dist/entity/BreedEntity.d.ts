import { TheCatEntityBase } from '../TheCatEntityBase';
import type { TheCatSDK } from '../TheCatSDK';
import type { Control } from '../types';
import type { Breed, BreedListMatch } from '../TheCatTypes';
declare class BreedEntity extends TheCatEntityBase<Breed> {
    constructor(client: TheCatSDK, entopts: any);
    make(this: BreedEntity): BreedEntity;
    list(this: any, reqmatch?: BreedListMatch, ctrl?: Control): Promise<BreedEntity[]>;
}
export { BreedEntity };
