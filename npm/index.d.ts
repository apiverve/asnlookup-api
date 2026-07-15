declare module '@apiverve/asnlookup' {
  export interface asnlookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface asnlookupResponse {
    status: string;
    error: string | null;
    data: ASNLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface ASNLookupData {
      asn:         null | string;
      simple:      null | string;
      handle:      null | string;
      description: null | string;
      country:     null | string;
  }

  export default class asnlookupWrapper {
    constructor(options: asnlookupOptions);

    execute(callback: (error: any, data: asnlookupResponse | null) => void): Promise<asnlookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: asnlookupResponse | null) => void): Promise<asnlookupResponse>;
    execute(query?: Record<string, any>): Promise<asnlookupResponse>;
  }
}
