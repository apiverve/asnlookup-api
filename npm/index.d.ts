declare module '@apiverve/asnlookup' {
  export interface asnlookupOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface asnlookupResponse {
    status: string;
    error: string | null;
    data: ASNLookupData;
    code?: number;
  }


  interface ASNLookupData {
      asn:         string;
      simple:      string;
      handle:      string;
      description: string;
  }

  export default class asnlookupWrapper {
    constructor(options: asnlookupOptions);

    execute(callback: (error: any, data: asnlookupResponse | null) => void): Promise<asnlookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: asnlookupResponse | null) => void): Promise<asnlookupResponse>;
    execute(query?: Record<string, any>): Promise<asnlookupResponse>;
  }
}
