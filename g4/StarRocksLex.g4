// Copyright 2021-present StarRocks, Inc. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


lexer grammar StarRocksLex;
@members {
private long sqlMode = com.starrocks.qe.SqlModeHelper.MODE_DEFAULT;
public void setSqlMode(long newSqlMode) {
    sqlMode = newSqlMode;
}
}
tokens {
    CONCAT
}

ACCESS: 'ACCESS';
ACTIVE: 'ACTIVE';
ADD: 'ADD';
ADMIN: 'ADMIN';
ADVISOR: 'ADVISOR';
AFTER: 'AFTER';
AGGREGATE: 'AGGREGATE';
ALL: 'ALL';
ALTER: 'ALTER';
ANALYZE: 'ANALYZE';
AND: 'AND';
ANTI: 'ANTI';
APPLY: 'APPLY';
ARRAY: 'ARRAY';
ARRAY_AGG: 'ARRAY_AGG';
ARRAY_AGG_DISTINCT: 'ARRAY_AGG_DISTINCT';
AS: 'AS';
ASC: 'ASC';
ASYNC: 'ASYNC';
AUTHORS: 'AUTHORS';
AUTHENTICATION: 'AUTHENTICATION';
AUTOMATED: 'AUTOMATED';
AUTO_INCREMENT: 'AUTO_INCREMENT';
AVG: 'AVG';
BACKEND: 'BACKEND';
BACKENDS: 'BACKENDS';
BACKUP: 'BACKUP';
BASE: 'BASE';
BASELINE: 'BASELINE';
BEGIN: 'BEGIN';
BETWEEN: 'BETWEEN';
BIGINT: 'BIGINT';
BINARY: 'BINARY';
BITMAP: 'BITMAP';
BITMAP_UNION: 'BITMAP_UNION';
BLACKHOLE: 'BLACKHOLE';
BLACKLIST: 'BLACKLIST';
BODY: 'BODY';
BOOLEAN: 'BOOLEAN';
BOTH: 'BOTH';
BRANCH: 'BRANCH';
BROKER: 'BROKER';
BUCKETS: 'BUCKETS';
BUILTIN: 'BUILTIN';
BY: 'BY';
CACHE: 'CACHE';
CANCEL: 'CANCEL';
CASE: 'CASE';
CAST: 'CAST';
CATALOG: 'CATALOG';
CATALOGS: 'CATALOGS';
CEIL: 'CEIL';
CHAIN: 'CHAIN';
CHAR: 'CHAR';
CHARACTER: 'CHARACTER';
CHARSET: 'CHARSET';
CHECK: 'CHECK';
CLEAN: 'CLEAN';
CLEAR: 'CLEAR';
CLUSTER : 'CLUSTER';
CLUSTERS : 'CLUSTERS';
COLLATE: 'COLLATE';
COLLATION: 'COLLATION';
COLUMN: 'COLUMN';
COLUMNS: 'COLUMNS';
COMMENT: 'COMMENT';
COMMIT: 'COMMIT';
COMMITTED: 'COMMITTED';
COMPACT: 'COMPACT';
COMPACTION: 'COMPACTION';
COMPUTE: 'COMPUTE';
CONFIG: 'CONFIG';
CONNECTION: 'CONNECTION';
CONSISTENT: 'CONSISTENT';
CONVERT: 'CONVERT';
COSTS: 'COSTS';
COUNT: 'COUNT';
CREATE: 'CREATE';
CROSS: 'CROSS';
CUBE: 'CUBE';
CUME_DIST: 'CUME_DIST';
CUMULATIVE: 'CUMULATIVE';
CURRENT: 'CURRENT';
CURRENT_DATE: 'CURRENT_DATE';
CURRENT_ROLE: 'CURRENT_ROLE';
CURRENT_TIME: 'CURRENT_TIME';
CURRENT_TIMESTAMP: 'CURRENT_TIMESTAMP';
CURRENT_USER: 'CURRENT_USER';
DATA: 'DATA';
DATACACHE: 'DATACACHE';
DATABASE: 'DATABASE';
DATABASES: 'DATABASES';
DATE: 'DATE';
DATETIME: 'DATETIME';
DAY: 'DAY';
DAYS: 'DAYS';
DEALLOCATE : 'DEALLOCATE';
DECIMAL: 'DECIMAL';
DECIMALV2: 'DECIMALV2';
DECIMAL32: 'DECIMAL32';
DECIMAL64: 'DECIMAL64';
DECIMAL128: 'DECIMAL128';
DECOMMISSION: 'DECOMMISSION';
DEFAULT: 'DEFAULT';
DELETE: 'DELETE';
DENSE_RANK: 'DENSE_RANK';
DEFERRED: 'DEFERRED';
DIALECT: 'DIALECT';
DICTIONARY: 'DICTIONARY';
DICTIONARY_GET: 'DICTIONARY_GET';
NTILE: 'NTILE';
DESC: 'DESC';
DESCRIBE: 'DESCRIBE';
DISABLE: 'DISABLE';
DISTINCT: 'DISTINCT';
DISTRIBUTED: 'DISTRIBUTED';
DISTRIBUTION: 'DISTRIBUTION';
DOUBLE: 'DOUBLE';
DROP: 'DROP';
DUAL: 'DUAL';
DUPLICATE: 'DUPLICATE';
DYNAMIC: 'DYNAMIC';
ELSE: 'ELSE';
ENABLE: 'ENABLE';
ENCLOSE: 'ENCLOSE';
END: 'END';
ENGINE: 'ENGINE';
ENGINES: 'ENGINES';
ERRORS: 'ERRORS';
ESCAPE: 'ESCAPE';
EVENTS: 'EVENTS';
EXCEPT: 'EXCEPT';
EXECUTE: 'EXECUTE';
EXISTS: 'EXISTS';
EXPLAIN: 'EXPLAIN';
EXPORT: 'EXPORT';
EXTERNAL: 'EXTERNAL';
EXTRACT: 'EXTRACT';
EVERY: 'EVERY';
FAILPOINT: 'FAILPOINT';
FAILPOINTS: 'FAILPOINTS';
FALSE: 'FALSE';
FIELDS: 'FIELDS';
FILE: 'FILE';
FILES: 'FILES';
FILTER: 'FILTER';
FIRST: 'FIRST';
FIRST_VALUE: 'FIRST_VALUE';
FLOAT: 'FLOAT';
FLOOR: 'FLOOR';
FN: 'FN';
FOLLOWING: 'FOLLOWING';
FOLLOWER: 'FOLLOWER';
FOR: 'FOR';
FORCE: 'FORCE';
FORMAT: 'FORMAT';
FREE: 'FREE';
FROM: 'FROM';
FRONTEND: 'FRONTEND';
FRONTENDS: 'FRONTENDS';
FULL: 'FULL';
FUNCTION: 'FUNCTION';
FUNCTIONS: 'FUNCTIONS';
GLOBAL: 'GLOBAL';
GRANT: 'GRANT';
GRANTS: 'GRANTS';
GROUP: 'GROUP';
GROUPS: 'GROUPS';
GROUPING: 'GROUPING';
GROUPING_ID: 'GROUPING_ID';
GROUP_CONCAT: 'GROUP_CONCAT';
HASH: 'HASH';
HAVING: 'HAVING';
HELP: 'HELP';
HISTOGRAM: 'HISTOGRAM';
HLL: 'HLL';
HLL_UNION: 'HLL_UNION';
HOST: 'HOST';
HOUR: 'HOUR';
HOURS: 'HOURS';
HUB: 'HUB';
IDENTIFIED: 'IDENTIFIED';
IF: 'IF';
IMPERSONATE: 'IMPERSONATE';
IMMEDIATE: 'IMMEDIATE';
IGNORE: 'IGNORE';
IMAGE: 'IMAGE';
IN: 'IN';
INACTIVE: 'INACTIVE';
INCREMENTAL: 'INCREMENTAL';
INDEX: 'INDEX';
INDEXES: 'INDEXES';
INFILE: 'INFILE';
INNER: 'INNER';
INSTALL: 'INSTALL';
INSERT: 'INSERT';
INT: 'INT';
INTEGER: 'INTEGER';
INTEGRATION: 'INTEGRATION';
INTEGRATIONS: 'INTEGRATIONS';
INTERMEDIATE: 'INTERMEDIATE';
INTERSECT: 'INTERSECT';
INTERVAL: 'INTERVAL';
INTO: 'INTO';
INVOKER: 'INVOKER';
GIN: 'GIN';
OVERWRITE: 'OVERWRITE';
IS: 'IS';
ISOLATION: 'ISOLATION';
JOB: 'JOB';
JOIN: 'JOIN';
JSON: 'JSON';
KEY: 'KEY';
KEYS: 'KEYS';
KILL: 'KILL';
LABEL: 'LABEL';
LAG: 'LAG';
LARGEINT: 'LARGEINT';
LAST: 'LAST';
LAST_VALUE: 'LAST_VALUE';
LATERAL: 'LATERAL';
LEAD: 'LEAD';
LEFT: 'LEFT';
LESS: 'LESS';
LEVEL: 'LEVEL';
LIKE: 'LIKE';
LIMIT: 'LIMIT';
LIST: 'LIST';
LOAD: 'LOAD';
LOCAL: 'LOCAL';
LOCALTIME: 'LOCALTIME';
LOCALTIMESTAMP: 'LOCALTIMESTAMP';
LOCATION: 'LOCATION';
LOCATIONS: 'LOCATIONS';
LOGS: 'LOGS';
LOGICAL: 'LOGICAL';
MANUAL: 'MANUAL';
MAP: 'MAP';
MAPPING: 'MAPPING';
MAPPINGS: 'MAPPINGS';
MASKING: 'MASKING';
MATCH: 'MATCH';
MATERIALIZED: 'MATERIALIZED';
MAX: 'MAX';
MAXVALUE: 'MAXVALUE';
MERGE: 'MERGE';
MICROSECOND: 'MICROSECOND';
MILLISECOND: 'MILLISECOND';
MIN: 'MIN';
MINUTE: 'MINUTE';
MINUTES: 'MINUTES';
MINUS: 'MINUS';
META: 'META';
MOD: 'MOD';
MODE: 'MODE';
MODIFY: 'MODIFY';
MONTH: 'MONTH';
NAME: 'NAME';
NAMES: 'NAMES';
NEGATIVE: 'NEGATIVE';
NGRAMBF: 'NGRAMBF';
NO: 'NO';
NODE: 'NODE';
NODES: 'NODES';
NONE: 'NONE';
NOT: 'NOT';
NULL: 'NULL';
NULLS: 'NULLS';
NUMBER: 'NUMBER';
NUMERIC: 'NUMERIC';
OBSERVER: 'OBSERVER';
OF: 'OF';
OFF: 'OFF';
OFFSET: 'OFFSET';
ON: 'ON';
ONLY: 'ONLY';
OPEN: 'OPEN';
OPERATE: 'OPERATE';
OPTIMIZE: 'OPTIMIZE';
OPTIMIZER: 'OPTIMIZER';
OPTION: 'OPTION';
OR: 'OR';
ORDER: 'ORDER';
OUTER: 'OUTER';
OUTFILE: 'OUTFILE';
OVER: 'OVER';
PARAMETER: '?';
PARTITION: 'PARTITION';
PARTITIONS: 'PARTITIONS';
PASSWORD: 'PASSWORD';
PATH: 'PATH';
PAUSE: 'PAUSE';
PENDING: 'PENDING';
PERCENT_RANK: 'PERCENT_RANK';
PERCENTILE: 'PERCENTILE';
PERCENTILE_UNION: 'PERCENTILE_UNION';
PLAN: 'PLAN';
PLUGIN: 'PLUGIN';
PLUGINS: 'PLUGINS';
PIPE: 'PIPE';
PIPES: 'PIPES';
PIVOT: 'PIVOT';
POLICY: 'POLICY';
POLICIES: 'POLICIES';
PRECEDING: 'PRECEDING';
PREDICATE: 'PREDICATE';
PREPARE: 'PREPARE';
PRIMARY: 'PRIMARY';
PRIORITY: 'PRIORITY';
PRIVILEGES: 'PRIVILEGES';
PROBABILITY: 'PROBABILITY';
PROC: 'PROC';
PROCEDURE: 'PROCEDURE';
PROCESSLIST: 'PROCESSLIST';
PROFILE: 'PROFILE';
PROFILELIST: 'PROFILELIST';
PROPERTIES: 'PROPERTIES';
PROPERTY: 'PROPERTY';
PROVIDER: 'PROVIDER';
PROVIDERS: 'PROVIDERS';
QUALIFY: 'QUALIFY';
QUARTER: 'QUARTER';
QUERY: 'QUERY';
QUERIES: 'QUERIES';
QUEUE: 'QUEUE';
QUOTA: 'QUOTA';
RANDOM: 'RANDOM';
RANGE: 'RANGE';
RANK: 'RANK';
READ: 'READ';
REASON: 'REASON';
RECOVER: 'RECOVER';
REFRESH: 'REFRESH';
REWRITE: 'REWRITE';
REGEXP: 'REGEXP';
RELEASE: 'RELEASE';
REMOVE: 'REMOVE';
RENAME: 'RENAME';
REPAIR: 'REPAIR';
REPEATABLE: 'REPEATABLE';
REPLACE: 'REPLACE';
REPLACE_IF_NOT_NULL: 'REPLACE_IF_NOT_NULL';
REPLICA: 'REPLICA';
REPOSITORY: 'REPOSITORY';
REPOSITORIES: 'REPOSITORIES';
RESOURCE: 'RESOURCE';
RESOURCES: 'RESOURCES';
RESTORE: 'RESTORE';
RESUME: 'RESUME';
RETAIN: 'RETAIN';
RETENTION: 'RETENTION';
RETURNS: 'RETURNS';
RETRY: 'RETRY';
REVOKE: 'REVOKE';
REVERT: 'REVERT';
RIGHT: 'RIGHT';
RLIKE: 'RLIKE';
ROLE: 'ROLE';
ROLES: 'ROLES';
ROLLBACK: 'ROLLBACK';
ROLLUP: 'ROLLUP';
ROUTINE: 'ROUTINE';
ROW: 'ROW';
ROWS: 'ROWS';
ROW_NUMBER: 'ROW_NUMBER';
RULE: 'RULE';
RULES: 'RULES';
RUNNING: 'RUNNING';
SAMPLE: 'SAMPLE';
SCHEDULE: 'SCHEDULE';
SCHEDULER: 'SCHEDULER';
SCHEMA: 'SCHEMA';
SCHEMAS: 'SCHEMAS';
SECOND: 'SECOND';
SECURITY: 'SECURITY';
SELECT: 'SELECT';
SEMI: 'SEMI';
SEPARATOR: 'SEPARATOR';
SERIALIZABLE: 'SERIALIZABLE';
SESSION: 'SESSION';
SET: 'SET';
SETS: 'SETS';
SET_VAR: 'SET_VAR';
SIGNED: 'SIGNED';
SKIP_HEADER: 'SKIP_HEADER';
SHOW: 'SHOW';
SMALLINT: 'SMALLINT';
SNAPSHOT: 'SNAPSHOT';
SNAPSHOTS: 'SNAPSHOTS';
SQLBLACKLIST: 'SQLBLACKLIST';
STARROCKS: 'STARROCKS';
START: 'START';
STATS: 'STATS';
STATUS: 'STATUS';
STOP: 'STOP';
STORAGE: 'STORAGE';
STREAM: 'STREAM';
STRING: 'STRING';
TEXT: 'TEXT';
SUBMIT: 'SUBMIT';
SUM: 'SUM';
SUSPEND: 'SUSPEND';
SYNC: 'SYNC';
SYSTEM: 'SYSTEM';
SYSTEM_TIME: 'SYSTEM_TIME';
SWAP: 'SWAP';
STRUCT: 'STRUCT';
TABLE: 'TABLE';
TABLES: 'TABLES';
TABLET: 'TABLET';
TABLETS: 'TABLETS';
TAG: 'TAG';
TASK: 'TASK';
TEMPORARY: 'TEMPORARY';
TERMINATED: 'TERMINATED';
THAN: 'THAN';
THEN: 'THEN';
TIME: 'TIME';
TIMES: 'TIMES';
TIMESTAMP: 'TIMESTAMP';
TIMESTAMPADD: 'TIMESTAMPADD';
TIMESTAMPDIFF: 'TIMESTAMPDIFF';
TINYINT: 'TINYINT';
TRANSACTION: 'TRANSACTION';
TRANSLATE: 'TRANSLATE';
TO: 'TO';
TRACE: 'TRACE';
TRIGGERS: 'TRIGGERS';
TRIM_SPACE: 'TRIM_SPACE';
TRUE: 'TRUE';
TRUNCATE: 'TRUNCATE';
TYPE: 'TYPE';
TYPES: 'TYPES';
UNBOUNDED: 'UNBOUNDED';
UNCOMMITTED: 'UNCOMMITTED';
UNION: 'UNION';
UNIQUE: 'UNIQUE';
UNINSTALL: 'UNINSTALL';
UNSET: 'UNSET';
UNSIGNED: 'UNSIGNED';
UPDATE: 'UPDATE';
USAGE: 'USAGE';
USE: 'USE';
USER: 'USER';
USERS: 'USERS';
USING: 'USING';
VALUE: 'VALUE';
VALUES: 'VALUES';
VARBINARY: 'VARBINARY';
VARCHAR: 'VARCHAR';
VARIABLES: 'VARIABLES';
VECTOR: 'VECTOR';
VERBOSE: 'VERBOSE';
VERSION: 'VERSION';
VIEW: 'VIEW';
VIEWS: 'VIEWS';
VOLUME: 'VOLUME';
VOLUMES: 'VOLUMES';
WAREHOUSE: 'WAREHOUSE';
WAREHOUSES: 'WAREHOUSES';
WARNINGS: 'WARNINGS';
WEEK: 'WEEK';
WHEN: 'WHEN';
WHERE: 'WHERE';
WHITELIST: 'WHITELIST';
WITH: 'WITH';
WORK: 'WORK';
WRITE: 'WRITE';
YEAR: 'YEAR';
LOCK: 'LOCK';
UNLOCK: 'UNLOCK';
LOW_PRIORITY: 'LOW_PRIORITY';
DISK: 'DISK';
BEFORE: 'BEFORE';
DOUBLE_DOLLAR: '$$';
FIELD: 'FIELD';
PERSISTENT: 'PERSISTENT';

EQ  : '=';
NEQ : '<>' | '!=';
LT  : '<';
LTE : '<=';
GT  : '>';
GTE : '>=';
EQ_FOR_NULL: '<=>';
ARRAY_ELEMENT: '[*]';

PLUS_SYMBOL: '+';
MINUS_SYMBOL: '-';
ASTERISK_SYMBOL: '*';
SLASH_SYMBOL: '/';
PERCENT_SYMBOL: '%';

LOGICAL_OR: '||' {setType((sqlMode & com.starrocks.qe.SqlModeHelper.MODE_PIPES_AS_CONCAT) == 0 ? LOGICAL_OR : StarRocksParser.CONCAT);};
LOGICAL_AND: '&&';
LOGICAL_NOT: '!';

INT_DIV: 'DIV';
BITAND: '&';
BITOR: '|';
BITXOR: '^';
BITNOT: '~';
BIT_SHIFT_LEFT: 'BITSHIFTLEFT';
BIT_SHIFT_RIGHT: 'BITSHIFTRIGHT';
BIT_SHIFT_RIGHT_LOGICAL: 'BITSHIFTRIGHTLOGICAL';

ARROW: '->';
AT: '@';

INTEGER_VALUE
    : DIGIT+
    ;

DECIMAL_VALUE
    : DIGIT+ '.' DIGIT*
    | '.' DIGIT+
    ;

DOUBLE_VALUE
    : DIGIT+ ('.' DIGIT*)? EXPONENT
    | '.' DIGIT+ EXPONENT
    ;

SINGLE_QUOTED_TEXT
    : '\'' ('\\'. | '\'\'' | ~('\'' | '\\'))* '\''
    ;

DOUBLE_QUOTED_TEXT
    : '"' ('\\'. | '""' | ~('"'| '\\'))* '"'
    ;

BINARY_SINGLE_QUOTED_TEXT
    : 'X\'' (~('\'' | '\\'))* '\''
    ;

BINARY_DOUBLE_QUOTED_TEXT
    : 'X"' (~('"'| '\\'))* '"'
    ;

LETTER_IDENTIFIER
    : (LETTER | '_') (LETTER | DIGIT | '_')*
    ;

DIGIT_IDENTIFIER
    : DIGIT (LETTER | DIGIT | '_')+
    ;

BACKQUOTED_IDENTIFIER
    : '`' ( ~'`' | '``' )* '`'
    ;

// Prevent recognize string:         .123somelatin AS ((.123), DECIMAL_LITERAL), ((somelatin), IDENTIFIER)
// it must recoginze:                .123somelatin AS ((.), DOT), (123somelatin, IDENTIFIER)
DOT_IDENTIFIER
    : '.' DIGIT_IDENTIFIER
    ;

fragment EXPONENT
    : 'E' [+-]? DIGIT+
    ;

fragment DIGIT
    : [0-9]
    ;

fragment LETTER
    : [a-zA-Z_$\u0080-\uffff]
    ;

SIMPLE_COMMENT
    : '--' ~[\r\n]* '\r'? '\n'? -> channel(HIDDEN)
    ;

BRACKETED_COMMENT
    : '/*'([ \r\n\t\u3000]* | ~'+' .*?) '*/' -> channel(HIDDEN)
    ;

OPTIMIZER_HINT
    : '/*+' .*? '*/' -> channel(2)
    ;

SEMICOLON: ';';

DOTDOTDOT: '...';

WS
    : [ \r\n\t\u3000]+ -> channel(HIDDEN)
    ;

ATTACHMENT
    : DOUBLE_DOLLAR .*? DOUBLE_DOLLAR
    ;