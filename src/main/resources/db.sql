CREATE TABLE "CAR_OUTPUT"
(
  "WORKCARID" character varying(128) NOT NULL,
  "OUTPUT" character varying(512), -- 每天当前的产出
  "OUTPUTTIME" date,
  CONSTRAINT "CAR_OUTPUT_pkey" PRIMARY KEY ("WORKCARID" )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "CAR_OUTPUT"
  OWNER TO postgres;
COMMENT ON COLUMN "CAR_OUTPUT"."OUTPUT" IS '每天当前的产出';

CREATE TABLE "S_BUSINESSLIST"
(
  "BUSINESSLISTOID" character varying(36) NOT NULL, -- 菜单上的业务ID
  "BPOID" character varying(64), -- 业务标识符
  "BPONAME" character varying(64), -- 业务名称
  "PARENTOID" character varying(36), -- 父菜单ID
  "APPLICATIONID" character varying(50), -- 应用程序ID
  "APPLICATIONNAME" character varying(100) -- 应用程序名称
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "S_BUSINESSLIST"
  OWNER TO postgres;
COMMENT ON TABLE "S_BUSINESSLIST"
  IS '业务集合';
COMMENT ON COLUMN "S_BUSINESSLIST"."BUSINESSLISTOID" IS '菜单上的业务ID';
COMMENT ON COLUMN "S_BUSINESSLIST"."BPOID" IS '业务标识符';
COMMENT ON COLUMN "S_BUSINESSLIST"."BPONAME" IS '业务名称';
COMMENT ON COLUMN "S_BUSINESSLIST"."PARENTOID" IS '父菜单ID';
COMMENT ON COLUMN "S_BUSINESSLIST"."APPLICATIONID" IS '应用程序ID';
COMMENT ON COLUMN "S_BUSINESSLIST"."APPLICATIONNAME" IS '应用程序名称';

CREATE TABLE "S_CONTACT"
(
  "CONTACTOID" character varying(36) NOT NULL, -- 联系表ID
  "WORKPHNUM" character varying(50), -- 工作电话
  "JOBTITLE" character varying(50), -- 工作头衔
  "EMAILADDR" character varying(100), -- 邮箱地址
  "HOMEPHNUM" character varying(50), -- 家庭电话
  "MOBILEPHONE" character varying(20), -- 移动电话
  "HOMEADDRESS" character varying(60), -- 家庭住址
  "SEX" character varying(2), -- 性别
  "BIRTHDAY" date, -- 出生日期
  "POLITICAL" character varying(60), -- 政治面貌
  "MARRIAGESTA" character varying(50), -- 婚姻状况
  "NATION" character varying(36), -- 民族
  "EDUCATION" character varying(50), -- 教育水平
  "GRADUATION" character varying(50), -- 毕业院校
  "GRADUATIONDAY" date, -- 毕业时间
  "CERTIFNO" character varying(100), -- 身份证号
  "POSTCODE" character varying(6), -- 邮政编码
  "REMARK" character varying(4000), -- 备注
  "PHOTO" bytea, -- 相片
  "SYSCREATED" timestamp without time zone, -- 创建日期
  "SYSCREATEDBY" character varying(36), -- 创建用户
  "SYSPOSTN" character varying(36), -- 所属岗位
  "SYSDIVISION" character varying(36), -- 所属部门
  "SYSORG" character varying(36), -- 所属组织
  "SYSLASTUPD" timestamp without time zone, -- 最后修改日期
  "SYSLASTUPDBY" character varying(36), -- 最后修改用户
  "PHOTOURL" character varying(128) -- 文件路径
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "S_CONTACT"
  OWNER TO postgres;
COMMENT ON TABLE "S_CONTACT"
  IS '联系表';
COMMENT ON COLUMN "S_CONTACT"."CONTACTOID" IS '联系表ID';
COMMENT ON COLUMN "S_CONTACT"."WORKPHNUM" IS '工作电话';
COMMENT ON COLUMN "S_CONTACT"."JOBTITLE" IS '工作头衔';
COMMENT ON COLUMN "S_CONTACT"."EMAILADDR" IS '邮箱地址';
COMMENT ON COLUMN "S_CONTACT"."HOMEPHNUM" IS '家庭电话';
COMMENT ON COLUMN "S_CONTACT"."MOBILEPHONE" IS '移动电话';
COMMENT ON COLUMN "S_CONTACT"."HOMEADDRESS" IS '家庭住址';
COMMENT ON COLUMN "S_CONTACT"."SEX" IS '性别';
COMMENT ON COLUMN "S_CONTACT"."BIRTHDAY" IS '出生日期';
COMMENT ON COLUMN "S_CONTACT"."POLITICAL" IS '政治面貌';
COMMENT ON COLUMN "S_CONTACT"."MARRIAGESTA" IS '婚姻状况';
COMMENT ON COLUMN "S_CONTACT"."NATION" IS '民族';
COMMENT ON COLUMN "S_CONTACT"."EDUCATION" IS '教育水平';
COMMENT ON COLUMN "S_CONTACT"."GRADUATION" IS '毕业院校';
COMMENT ON COLUMN "S_CONTACT"."GRADUATIONDAY" IS '毕业时间';
COMMENT ON COLUMN "S_CONTACT"."CERTIFNO" IS '身份证号';
COMMENT ON COLUMN "S_CONTACT"."POSTCODE" IS '邮政编码';
COMMENT ON COLUMN "S_CONTACT"."REMARK" IS '备注';
COMMENT ON COLUMN "S_CONTACT"."PHOTO" IS '相片';
COMMENT ON COLUMN "S_CONTACT"."SYSCREATED" IS '创建日期';
COMMENT ON COLUMN "S_CONTACT"."SYSCREATEDBY" IS '创建用户';
COMMENT ON COLUMN "S_CONTACT"."SYSPOSTN" IS '所属岗位';
COMMENT ON COLUMN "S_CONTACT"."SYSDIVISION" IS '所属部门';
COMMENT ON COLUMN "S_CONTACT"."SYSORG" IS '所属组织';
COMMENT ON COLUMN "S_CONTACT"."SYSLASTUPD" IS '最后修改日期';
COMMENT ON COLUMN "S_CONTACT"."SYSLASTUPDBY" IS '最后修改用户';
COMMENT ON COLUMN "S_CONTACT"."PHOTOURL" IS '文件路径';

CREATE TABLE "S_DICTIONARY"
(
  "ID" character varying(32) NOT NULL, -- 编号，主键
  "PARENTID" character varying(32), -- 父节点编号
  "TYPE" character varying(32) NOT NULL, -- 字典类型编号
  "CODE" character varying(32) NOT NULL, -- 字典代码
  "DATA" character varying(64) NOT NULL, -- 字典数据
  "DATA1" character varying(64), -- 字典数据1（扩展）
  "REMARK" character varying(256), -- 备注信息
  "EDITDATE" timestamp without time zone -- 新增/修改时间
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "S_DICTIONARY"
  OWNER TO postgres;
COMMENT ON TABLE "S_DICTIONARY"
  IS '数据字典';
COMMENT ON COLUMN "S_DICTIONARY"."ID" IS '编号，主键';
COMMENT ON COLUMN "S_DICTIONARY"."PARENTID" IS '父节点编号';
COMMENT ON COLUMN "S_DICTIONARY"."TYPE" IS '字典类型编号';
COMMENT ON COLUMN "S_DICTIONARY"."CODE" IS '字典代码';
COMMENT ON COLUMN "S_DICTIONARY"."DATA" IS '字典数据';
COMMENT ON COLUMN "S_DICTIONARY"."DATA1" IS '字典数据1（扩展）';
COMMENT ON COLUMN "S_DICTIONARY"."REMARK" IS '备注信息';
COMMENT ON COLUMN "S_DICTIONARY"."EDITDATE" IS '新增/修改时间';

CREATE TABLE "S_FILE"
(
  "ID" character varying(32) NOT NULL, -- 编号
  "FOLDERID" character varying(32), -- 目录编号
  "NAME" character varying(512) NOT NULL, -- 名称
  "TYPE" character varying(32), -- 类型
  "FORMATTYPE" character varying(16), -- 格式类型
  "SIZE" numeric(10,2), -- 附件大小
  "CREATEDATE" timestamp without time zone NOT NULL, -- 修改时间
  "PATH" character varying(256), -- 附件路径
  "REMARK" character varying(256), -- 描述
  "UPLOADER" character varying(64), -- 上传人
  "SAFE" character varying(8), -- 安全的文件
  "UPLOADDATE" timestamp without time zone -- 上传时间
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "S_FILE"
  OWNER TO postgres;
COMMENT ON TABLE "S_FILE"
  IS '文件';
COMMENT ON COLUMN "S_FILE"."ID" IS '编号';
COMMENT ON COLUMN "S_FILE"."FOLDERID" IS '目录编号';
COMMENT ON COLUMN "S_FILE"."NAME" IS '名称';
COMMENT ON COLUMN "S_FILE"."TYPE" IS '类型';
COMMENT ON COLUMN "S_FILE"."FORMATTYPE" IS '格式类型';
COMMENT ON COLUMN "S_FILE"."SIZE" IS '附件大小';
COMMENT ON COLUMN "S_FILE"."CREATEDATE" IS '修改时间';
COMMENT ON COLUMN "S_FILE"."PATH" IS '附件路径';
COMMENT ON COLUMN "S_FILE"."REMARK" IS '描述';
COMMENT ON COLUMN "S_FILE"."UPLOADER" IS '上传人';
COMMENT ON COLUMN "S_FILE"."SAFE" IS '安全的文件';
COMMENT ON COLUMN "S_FILE"."UPLOADDATE" IS '上传时间';

CREATE TABLE "S_FOLDER"
(
  "ID" character varying(32) NOT NULL, -- 编号
  "NAME" character varying(64) NOT NULL, -- 名称
  "CREATEDATE" date, -- 创建时间
  "STORAGE" numeric(6,2), -- 总存储空间
  "REMARK" character varying(256), -- 描述信息
  "FILETYPE" character varying(256), -- 文件类型
  "FILEMAXSIZE" numeric(6,2), -- 单个文件最大大小限制
  "CURRPATH" character varying(256), -- 当前路径
  "PARENTID" character varying(32) -- 父节点编号
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "S_FOLDER"
  OWNER TO postgres;
COMMENT ON TABLE "S_FOLDER"
  IS '文件夹';
COMMENT ON COLUMN "S_FOLDER"."ID" IS '编号';
COMMENT ON COLUMN "S_FOLDER"."NAME" IS '名称';
COMMENT ON COLUMN "S_FOLDER"."CREATEDATE" IS '创建时间';
COMMENT ON COLUMN "S_FOLDER"."STORAGE" IS '总存储空间';
COMMENT ON COLUMN "S_FOLDER"."REMARK" IS '描述信息';
COMMENT ON COLUMN "S_FOLDER"."FILETYPE" IS '文件类型';
COMMENT ON COLUMN "S_FOLDER"."FILEMAXSIZE" IS '单个文件最大大小限制';
COMMENT ON COLUMN "S_FOLDER"."CURRPATH" IS '当前路径';
COMMENT ON COLUMN "S_FOLDER"."PARENTID" IS '父节点编号';

CREATE TABLE "S_LOG"
(
  "TYPE" character varying(128) NOT NULL, -- 日志类型
  "MODULAR" character varying(128) NOT NULL, -- 所属模块
  "DESCRIPTION" character varying(128), -- 描述信息
  "CREATEDATE" timestamp without time zone NOT NULL, -- 创建时间
  "SOURCE" character varying(256) NOT NULL, -- 日志来源
  "MESSAGE" character varying(256), -- 消息信息
  "HOSTNAME" character varying(32), -- 计算机用户名称
  "USERNAME" character varying(32) NOT NULL, -- 系统用户名
  "IP" character varying(32) NOT NULL, -- IP
  "ID" character varying(32) NOT NULL -- 编号
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "S_LOG"
  OWNER TO postgres;
COMMENT ON TABLE "S_LOG"
  IS '系统日志';
COMMENT ON COLUMN "S_LOG"."TYPE" IS '日志类型';
COMMENT ON COLUMN "S_LOG"."MODULAR" IS '所属模块';
COMMENT ON COLUMN "S_LOG"."DESCRIPTION" IS '描述信息';
COMMENT ON COLUMN "S_LOG"."CREATEDATE" IS '创建时间';
COMMENT ON COLUMN "S_LOG"."SOURCE" IS '日志来源';
COMMENT ON COLUMN "S_LOG"."MESSAGE" IS '消息信息';
COMMENT ON COLUMN "S_LOG"."HOSTNAME" IS '计算机用户名称';
COMMENT ON COLUMN "S_LOG"."USERNAME" IS '系统用户名';
COMMENT ON COLUMN "S_LOG"."IP" IS 'IP';
COMMENT ON COLUMN "S_LOG"."ID" IS '编号';

CREATE TABLE "S_ORGANIZE"
(
  "ORGANIZEOID" character varying(36) NOT NULL, -- 组织机构基本信息ID
  "ORGNAME" character varying(64), -- 名称
  "ORGFLG" integer, -- 组织标记
  "ACTIVEFLAG" integer, -- 激活标记
  "ORGTYPE" integer, -- 组织类型
  "DESCTEXT" character varying(255), -- 描述
  "TELEPHONENO" character varying(50), -- 电话
  "FAX" character varying(50), -- 传真
  "WEBADDRESS" character varying(50), -- 网址
  "ADDRESS" character varying(80), -- 地址
  "POSTCODE" character varying(6), -- 邮政编码
  "CONTACT" character varying(20), -- 联系人
  "SYSCREATED" timestamp without time zone, -- 创建日期
  "SYSCREATEDBY" character varying(36), -- 创建用户
  "SYSPOSTN" character varying(36), -- 所属岗位
  "SYSDIVISION" character varying(36), -- 所属部门
  "SYSORG" character varying(36), -- 所属组织
  "SYSLASTUPD" timestamp without time zone, -- 最后修改日期
  "SYSLASTUPDBY" character varying(36), -- 最后修改用户
  "CLASSCODE" character varying(300), -- 层次码
  "PARENTOID" character varying(36) -- 父组织外键
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "S_ORGANIZE"
  OWNER TO postgres;
COMMENT ON TABLE "S_ORGANIZE"
  IS '组织机构基本信息';
COMMENT ON COLUMN "S_ORGANIZE"."ORGANIZEOID" IS '组织机构基本信息ID';
COMMENT ON COLUMN "S_ORGANIZE"."ORGNAME" IS '名称';
COMMENT ON COLUMN "S_ORGANIZE"."ORGFLG" IS '组织标记';
COMMENT ON COLUMN "S_ORGANIZE"."ACTIVEFLAG" IS '激活标记';
COMMENT ON COLUMN "S_ORGANIZE"."ORGTYPE" IS '组织类型';
COMMENT ON COLUMN "S_ORGANIZE"."DESCTEXT" IS '描述';
COMMENT ON COLUMN "S_ORGANIZE"."TELEPHONENO" IS '电话';
COMMENT ON COLUMN "S_ORGANIZE"."FAX" IS '传真';
COMMENT ON COLUMN "S_ORGANIZE"."WEBADDRESS" IS '网址';
COMMENT ON COLUMN "S_ORGANIZE"."ADDRESS" IS '地址';
COMMENT ON COLUMN "S_ORGANIZE"."POSTCODE" IS '邮政编码';
COMMENT ON COLUMN "S_ORGANIZE"."CONTACT" IS '联系人';
COMMENT ON COLUMN "S_ORGANIZE"."SYSCREATED" IS '创建日期';
COMMENT ON COLUMN "S_ORGANIZE"."SYSCREATEDBY" IS '创建用户';
COMMENT ON COLUMN "S_ORGANIZE"."SYSPOSTN" IS '所属岗位';
COMMENT ON COLUMN "S_ORGANIZE"."SYSDIVISION" IS '所属部门';
COMMENT ON COLUMN "S_ORGANIZE"."SYSORG" IS '所属组织';
COMMENT ON COLUMN "S_ORGANIZE"."SYSLASTUPD" IS '最后修改日期';
COMMENT ON COLUMN "S_ORGANIZE"."SYSLASTUPDBY" IS '最后修改用户';
COMMENT ON COLUMN "S_ORGANIZE"."CLASSCODE" IS '层次码';
COMMENT ON COLUMN "S_ORGANIZE"."PARENTOID" IS '父组织外键';

CREATE TABLE "S_POST"
(
  "POSTOID" character varying(36) NOT NULL, -- 岗位基本信息ID
  "POSTNAME" character varying(64), -- 岗位名称
  "DESC_TEXT" character varying(255), -- 描述
  "FBASEPOSTN" integer, -- 是否为部门/组织负责岗位
  "POSTTYPE" character varying(20), -- 特殊岗位类型
  "CLASSCODE" character varying(300), -- 层次码
  "REPORTTOPOST" character varying(2000), -- 汇报岗位集合
  "REPORTTOPOSTIDS" character varying(2000), -- 汇报岗位集合Ids
  "RESPDESC" character varying(4000), -- 岗位责任描述
  "ORGANIZEOID" character varying(36), -- 组织OID
  "PARENTOID" character varying(36), -- 父岗位
  "DIVISIONOID" character varying(36), -- 所属部门OID
  "RESPONSIBILITYOID" character varying(36), -- 岗位责任外键
  "SYSCREATED" timestamp without time zone, -- 创建日期
  "SYSCREATEDBY" character varying(36), -- 创建用户
  "SYSPOSTN" character varying(36), -- 所属岗位
  "SYSDIVISION" character varying(36), -- 所属部门
  "SYSORG" character varying(36), -- 所属组织
  "SYSLASTUPD" timestamp without time zone, -- 最后修改日期
  "SYSLASTUPDBY" character varying(36) -- 最后修改用户
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "S_POST"
  OWNER TO postgres;
COMMENT ON TABLE "S_POST"
  IS '岗位基本信息';
COMMENT ON COLUMN "S_POST"."POSTOID" IS '岗位基本信息ID';
COMMENT ON COLUMN "S_POST"."POSTNAME" IS '岗位名称';
COMMENT ON COLUMN "S_POST"."DESC_TEXT" IS '描述';
COMMENT ON COLUMN "S_POST"."FBASEPOSTN" IS '是否为部门/组织负责岗位';
COMMENT ON COLUMN "S_POST"."POSTTYPE" IS '特殊岗位类型';
COMMENT ON COLUMN "S_POST"."CLASSCODE" IS '层次码';
COMMENT ON COLUMN "S_POST"."REPORTTOPOST" IS '汇报岗位集合';
COMMENT ON COLUMN "S_POST"."REPORTTOPOSTIDS" IS '汇报岗位集合Ids';
COMMENT ON COLUMN "S_POST"."RESPDESC" IS '岗位责任描述';
COMMENT ON COLUMN "S_POST"."ORGANIZEOID" IS '组织OID';
COMMENT ON COLUMN "S_POST"."PARENTOID" IS '父岗位';
COMMENT ON COLUMN "S_POST"."DIVISIONOID" IS '所属部门OID';
COMMENT ON COLUMN "S_POST"."RESPONSIBILITYOID" IS '岗位责任外键';
COMMENT ON COLUMN "S_POST"."SYSCREATED" IS '创建日期';
COMMENT ON COLUMN "S_POST"."SYSCREATEDBY" IS '创建用户';
COMMENT ON COLUMN "S_POST"."SYSPOSTN" IS '所属岗位';
COMMENT ON COLUMN "S_POST"."SYSDIVISION" IS '所属部门';
COMMENT ON COLUMN "S_POST"."SYSORG" IS '所属组织';
COMMENT ON COLUMN "S_POST"."SYSLASTUPD" IS '最后修改日期';
COMMENT ON COLUMN "S_POST"."SYSLASTUPDBY" IS '最后修改用户';

CREATE TABLE "S_POSTNPERMAP"
(
  "POSTNPERMAPOID" character varying(36) NOT NULL, -- 人员岗位ID
  "FISMASTERPOST" integer, -- 是否为主岗位
  "FPRIMARY" integer, -- 主要的责任
  "POSTOID" character varying(36), -- 岗位外键
  "USEROID" character varying(36) -- 人员外键
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "S_POSTNPERMAP"
  OWNER TO postgres;
COMMENT ON TABLE "S_POSTNPERMAP"
  IS '人员岗位表';
COMMENT ON COLUMN "S_POSTNPERMAP"."POSTNPERMAPOID" IS '人员岗位ID';
COMMENT ON COLUMN "S_POSTNPERMAP"."FISMASTERPOST" IS '是否为主岗位';
COMMENT ON COLUMN "S_POSTNPERMAP"."FPRIMARY" IS '主要的责任';
COMMENT ON COLUMN "S_POSTNPERMAP"."POSTOID" IS '岗位外键';
COMMENT ON COLUMN "S_POSTNPERMAP"."USEROID" IS '人员外键';

CREATE TABLE "S_POSTNRESPMAP"
(
  "POSTNRESPMAPOID" character varying(36) NOT NULL, -- 岗位的责任ID
  "FPRIMARY" integer, -- 主要的责任
  "POSTOID" character varying(36), -- 岗位外键
  "BUSINESSLISTOID" character varying(36) -- 业务模块OID
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "S_POSTNRESPMAP"
  OWNER TO postgres;
COMMENT ON TABLE "S_POSTNRESPMAP"
  IS '岗位责任';
COMMENT ON COLUMN "S_POSTNRESPMAP"."POSTNRESPMAPOID" IS '岗位的责任ID';
COMMENT ON COLUMN "S_POSTNRESPMAP"."FPRIMARY" IS '主要的责任';
COMMENT ON COLUMN "S_POSTNRESPMAP"."POSTOID" IS '岗位外键';
COMMENT ON COLUMN "S_POSTNRESPMAP"."BUSINESSLISTOID" IS '业务模块OID';

CREATE TABLE "S_RELATION"
(
  "RELATIONOID" character varying(36) NOT NULL, -- 关系ID
  "USEROID" character varying(36), -- 人员关联OID
  "FRIENDOID" character varying(36), -- 好友OID
  "REQUEST" integer, -- 请求状态
  "REQUESTDATE" date, -- 请求时间
  "ACTIVEFLAGBLACK" integer, -- 激活黑名单
  "MESSAGE" character varying(2000) -- 请求信息
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "S_RELATION"
  OWNER TO postgres;
COMMENT ON TABLE "S_RELATION"
  IS '用户关系表';
COMMENT ON COLUMN "S_RELATION"."RELATIONOID" IS '关系ID';
COMMENT ON COLUMN "S_RELATION"."USEROID" IS '人员关联OID';
COMMENT ON COLUMN "S_RELATION"."FRIENDOID" IS '好友OID';
COMMENT ON COLUMN "S_RELATION"."REQUEST" IS '请求状态';
COMMENT ON COLUMN "S_RELATION"."REQUESTDATE" IS '请求时间';
COMMENT ON COLUMN "S_RELATION"."ACTIVEFLAGBLACK" IS '激活黑名单';
COMMENT ON COLUMN "S_RELATION"."MESSAGE" IS '请求信息';

CREATE TABLE "S_TEXT"
(
  "TEXTOID" character varying(36) NOT NULL, -- 测试数据的主键
  "X" numeric(18,6), -- X坐标
  "Y" numeric(18,6), -- Y坐标
  "TEXTNAME" character varying(36) -- 测试记录名称
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "S_TEXT"
  OWNER TO postgres;
COMMENT ON TABLE "S_TEXT"
  IS '测试数据表';
COMMENT ON COLUMN "S_TEXT"."TEXTOID" IS '测试数据的主键';
COMMENT ON COLUMN "S_TEXT"."X" IS 'X坐标';
COMMENT ON COLUMN "S_TEXT"."Y" IS 'Y坐标';
COMMENT ON COLUMN "S_TEXT"."TEXTNAME" IS '测试记录名称';

CREATE TABLE "S_USER"
(
  "USEROID" character varying(36) NOT NULL, -- 用户信息ID
  "LOGIN" character varying(64), -- 登录名
  "PASSWORD" character varying(64), -- 密码
  "CONEMPNUM" character varying(30), -- 员工编号
  "PERSONNAME" character varying(50), -- 姓名
  "CANO" character varying(200), -- CA证书
  "PERSONTYPE" integer, -- 人员类别
  "PWLASTUPD" timestamp without time zone, -- 上次修改密码日期
  "FLG" integer, -- 用户标记
  "ONLINESTATE" integer, -- 在线状态
  "USEPERIOD" date, -- 使用期
  "CLIENTIP" character varying(50), -- 登录IP
  "CONTACTOID" character varying(36), -- 人员关联OID
  "ORGANIZEOID" character varying(36), -- 组织机构ID
  "DIVISIONOID" character varying(36), -- 部门ID
  "POSTOID" character varying(36), -- 岗位ID
  "RESPONSIBILITYOID" character varying(36), -- 责任ID
  "SYSCREATED" timestamp without time zone, -- 创建日期
  "SYSCREATEDBY" character varying(36), -- 创建用户
  "SYSPOSTN" character varying(36), -- 所属岗位
  "SYSDIVISION" character varying(36), -- 所属部门
  "SYSORG" character varying(36), -- 所属组织
  "SYSLASTUPD" timestamp without time zone, -- 最后修改日期
  "SYSLASTUPDBY" character varying(36) -- 最后修改用户
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "S_USER"
  OWNER TO postgres;
COMMENT ON TABLE "S_USER"
  IS '用户信息';
COMMENT ON COLUMN "S_USER"."USEROID" IS '用户信息ID';
COMMENT ON COLUMN "S_USER"."LOGIN" IS '登录名';
COMMENT ON COLUMN "S_USER"."PASSWORD" IS '密码';
COMMENT ON COLUMN "S_USER"."CONEMPNUM" IS '员工编号';
COMMENT ON COLUMN "S_USER"."PERSONNAME" IS '姓名';
COMMENT ON COLUMN "S_USER"."CANO" IS 'CA证书';
COMMENT ON COLUMN "S_USER"."PERSONTYPE" IS '人员类别';
COMMENT ON COLUMN "S_USER"."PWLASTUPD" IS '上次修改密码日期';
COMMENT ON COLUMN "S_USER"."FLG" IS '用户标记';
COMMENT ON COLUMN "S_USER"."ONLINESTATE" IS '在线状态';
COMMENT ON COLUMN "S_USER"."USEPERIOD" IS '使用期';
COMMENT ON COLUMN "S_USER"."CLIENTIP" IS '登录IP';
COMMENT ON COLUMN "S_USER"."CONTACTOID" IS '人员关联OID';
COMMENT ON COLUMN "S_USER"."ORGANIZEOID" IS '组织机构ID';
COMMENT ON COLUMN "S_USER"."DIVISIONOID" IS '部门ID';
COMMENT ON COLUMN "S_USER"."POSTOID" IS '岗位ID';
COMMENT ON COLUMN "S_USER"."RESPONSIBILITYOID" IS '责任ID';
COMMENT ON COLUMN "S_USER"."SYSCREATED" IS '创建日期';
COMMENT ON COLUMN "S_USER"."SYSCREATEDBY" IS '创建用户';
COMMENT ON COLUMN "S_USER"."SYSPOSTN" IS '所属岗位';
COMMENT ON COLUMN "S_USER"."SYSDIVISION" IS '所属部门';
COMMENT ON COLUMN "S_USER"."SYSORG" IS '所属组织';
COMMENT ON COLUMN "S_USER"."SYSLASTUPD" IS '最后修改日期';
COMMENT ON COLUMN "S_USER"."SYSLASTUPDBY" IS '最后修改用户';

CREATE TABLE "T_CARINFO"
(
  "ID" character varying(64) NOT NULL,
  "CARCODE" character varying(32),
  "TYPE" character varying(32),
  "NETCODE" character varying(32),
  "PORT" character varying(32),
  "REMARK" character varying(128),
  CONSTRAINT "T_CARINFO_pkey" PRIMARY KEY ("ID" )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_CARINFO"
  OWNER TO postgres;

CREATE TABLE "T_CARSET"
(
  "ID" character varying(64) NOT NULL,
  "MAXX" double precision,
  "MAXY" double precision,
  "MINX" double precision,
  "MINY" double precision,
  "SPEED" double precision,
  "SECOND" double precision,
  "HEAVEYSPEED" double precision,
  "INTERVAL" double precision,
  CONSTRAINT "T_CARSET_pkey" PRIMARY KEY ("ID" )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_CARSET"
  OWNER TO postgres;

CREATE TABLE "T_CAUTION"
(
  "ID" character varying(64) NOT NULL,
  "CARNAME" character varying(32),
  "LON" double precision,
  "ALERTTIME" timestamp without time zone,
  "LOG" character varying, -- 128
  "LAT" double precision,
  CONSTRAINT "T_CAUTION_pkey" PRIMARY KEY ("ID" )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_CAUTION"
  OWNER TO postgres;
COMMENT ON TABLE "T_CAUTION"
  IS '围栏报警';
COMMENT ON COLUMN "T_CAUTION"."LOG" IS '128';

CREATE TABLE "T_DL"
(
  "NAME" character varying(64),
  "MATERIAL" character varying(64),
  "WIDTH" numeric(10,2),
  geom geometry(LineString),
  "ID" character varying(32) NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_DL"
  OWNER TO postgres;

CREATE TABLE "T_DLXL"
(
  "ID" character varying(32) NOT NULL,
  geom geometry(LineString),
  "NAME" character varying(64), -- 线路名称
  "LAYINGPATH" character varying(128), -- 路径
  "UNIT" character varying(128), -- 线缆规格
  "LAYINGMETHOD" character varying(64), -- 敷设方式
  "SPECMODEL" character varying(64), -- 规格型号
  "DEVICENAME" character varying(64), -- 设备名称
  "INSTALLPLACE" character varying(256), -- 安装地点
  "INSTALLDATE" date -- 安装日期
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_DLXL"
  OWNER TO postgres;
COMMENT ON TABLE "T_DLXL"
  IS '电力线路';
COMMENT ON COLUMN "T_DLXL"."NAME" IS '线路名称';
COMMENT ON COLUMN "T_DLXL"."LAYINGPATH" IS '路径';
COMMENT ON COLUMN "T_DLXL"."UNIT" IS '线缆规格';
COMMENT ON COLUMN "T_DLXL"."LAYINGMETHOD" IS '敷设方式';
COMMENT ON COLUMN "T_DLXL"."SPECMODEL" IS '规格型号';
COMMENT ON COLUMN "T_DLXL"."DEVICENAME" IS '设备名称';
COMMENT ON COLUMN "T_DLXL"."INSTALLPLACE" IS '安装地点';
COMMENT ON COLUMN "T_DLXL"."INSTALLDATE" IS '安装日期';

CREATE TABLE "T_FC"
(
  "NAME" character varying(64),
  "OWNER" character varying(64),
  "AREA" character varying(64),
  "BUILDDATE" date,
  "EFFECT" character varying(64),
  "IMAGEURL" character varying(256),
  geom geometry(Polygon),
  "ID" character varying(32) NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_FC"
  OWNER TO postgres;

CREATE TABLE "T_FENCE"
(
  "ID" character varying(32) NOT NULL,
  "NAME" character varying(64),
  "AREA" character varying(64),
  "CAR" character varying(64),
  "REMARK" character varying(256),
  geom geometry(Polygon),
  "CREATETIME" date,
  "RECORDLOG" character varying(1)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_FENCE"
  OWNER TO postgres;

CREATE TABLE "T_FENCE2"
(
  "ID" character varying(32) NOT NULL,
  "NAME" character varying(64),
  "AREA" character varying(64),
  "CAR" character varying(64),
  "CREATETIME" date,
  "REMARK" character varying(256),
  geom geometry(Polygon)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_FENCE2"
  OWNER TO postgres;

CREATE TABLE "T_FISHNET"
(
  "ID" character varying(64) NOT NULL,
  "AREANAME" character varying(32),
  "AREATYPE" character varying(32),
  "CARNAME" character varying(16),
  "CREATETIME" date,
  "NETID" character varying(64),
  "RECORDLOG" character varying(2),
  "INSIDE" character varying(2),
  geom geometry,
  "REMARK" character varying(512),
  CONSTRAINT "T_FISHNET_pkey" PRIMARY KEY ("ID" )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_FISHNET"
  OWNER TO postgres;

CREATE TABLE "T_HISLENGTH"
(
  "ID" character varying(32) NOT NULL,
  "CARCODE" character varying,
  "HISTIME" character varying(20),
  "LENGTH" double precision,
  CONSTRAINT "T_HISLENGTH_pkey" PRIMARY KEY ("ID" )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_HISLENGTH"
  OWNER TO postgres;

CREATE TABLE "T_HISTORY"
(
  "ID" character varying(64) NOT NULL,
  "DEVICEID" character varying(32),
  "CARCODE" character varying(32),
  "LONGITUDE" character varying(32),
  "LATITUDE" character varying(32),
  "LOCATIONTIME" character(32),
  "SPEED" character varying(32),
  "TYPE" character varying(32),
  "ALTITUDE" character varying(32),
  CONSTRAINT "T_HISTORY_pkey" PRIMARY KEY ("ID" )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_HISTORY"
  OWNER TO postgres;

CREATE TABLE "T_JCW"
(
  "ID" character varying(32) NOT NULL,
  geom geometry(LineString),
  "BARNO" character varying(64), -- 杆号
  "LAYINGPATH" character varying(64) -- 路径
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_JCW"
  OWNER TO postgres;
COMMENT ON TABLE "T_JCW"
  IS '接触网
';
COMMENT ON COLUMN "T_JCW"."BARNO" IS '杆号';
COMMENT ON COLUMN "T_JCW"."LAYINGPATH" IS '路径';

CREATE TABLE "T_JPS"
(
  "ID" character varying(32) NOT NULL, -- 编号
  "PIPEID" character varying(64), -- 管道编号
  "TYPE" character varying(64), -- 类型
  "LAYINGPATH" character varying(128), -- 敷设路径
  "DIAMETER" numeric(10,2), -- 管径
  "MATERIAL" character varying(64), -- 材质
  "DEPTH" numeric(10,2), -- 埋深
  "LAYINGDATE" date, -- 敷设日期
  "UNIT" character varying(128), -- 产权单位
  geom geometry(LineString)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_JPS"
  OWNER TO postgres;
COMMENT ON TABLE "T_JPS"
  IS '给排水';
COMMENT ON COLUMN "T_JPS"."ID" IS '编号';
COMMENT ON COLUMN "T_JPS"."PIPEID" IS '管道编号';
COMMENT ON COLUMN "T_JPS"."TYPE" IS '类型';
COMMENT ON COLUMN "T_JPS"."LAYINGPATH" IS '敷设路径';
COMMENT ON COLUMN "T_JPS"."DIAMETER" IS '管径';
COMMENT ON COLUMN "T_JPS"."MATERIAL" IS '材质';
COMMENT ON COLUMN "T_JPS"."DEPTH" IS '埋深';
COMMENT ON COLUMN "T_JPS"."LAYINGDATE" IS '敷设日期';
COMMENT ON COLUMN "T_JPS"."UNIT" IS '产权单位';

CREATE TABLE "T_LIGHT"
(
  "ID" character varying(32) NOT NULL, -- 编号，主键
  "NAME" character varying(64), -- 名称
  "ADDRESS" character varying(256), -- 地址
  "REMARK" character varying(256), -- 备注
  geom geometry(Point) -- 坐标
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_LIGHT"
  OWNER TO postgres;
COMMENT ON COLUMN "T_LIGHT"."ID" IS '编号，主键';
COMMENT ON COLUMN "T_LIGHT"."NAME" IS '名称';
COMMENT ON COLUMN "T_LIGHT"."ADDRESS" IS '地址';
COMMENT ON COLUMN "T_LIGHT"."REMARK" IS '备注';
COMMENT ON COLUMN "T_LIGHT".geom IS '坐标';

CREATE TABLE "T_OUTPUT"
(
  "ID" character varying(64) NOT NULL,
  "OUTPUT" character varying(32),
  "OUTPUTTIME" date,
  "CARNAME" character varying(32),
  "CARCODE" character varying(32),
  "LENGTH" double precision,
  "SPEEDTIMES" character varying(5),
  "FENCETIMES" character varying(5),
  "MAXSPEED" double precision,
  CONSTRAINT "T_OUTPUT_pkey" PRIMARY KEY ("ID" )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_OUTPUT"
  OWNER TO postgres;

CREATE TABLE "T_OUTPUTLIST"
(
  "ID" character varying(64) NOT NULL,
  "CARNAME" character varying(16),
  "DEVICEID" character varying(8),
  "COUNT" integer,
  "OUTPUTTIME" timestamp without time zone,
  "INPUTTIME" timestamp without time zone,
  CONSTRAINT "T_OUTPUTLIST_pkey" PRIMARY KEY ("ID" )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_OUTPUTLIST"
  OWNER TO postgres;

CREATE TABLE "T_REALTIME"
(
  "ID" character varying(64) NOT NULL,
  "DEVICEID" character varying(32),
  "CARCODE" character varying(32),
  "LONGITUDE" character varying(32),
  "LATITUDE" character varying(32),
  "LOCATIONTIME" character varying(32),
  "SPEED" character varying(32),
  "TYPE" character varying(32),
  "ALTITUDE" character(32),
  CONSTRAINT realtime_track_pkey PRIMARY KEY ("ID" )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_REALTIME"
  OWNER TO postgres;

CREATE TABLE "T_ROAD"
(
  "NAME" character varying(64),
  "REMARK" character varying(64),
  geom geometry(LineString),
  "ID" character varying(32) NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_ROAD"
  OWNER TO postgres;

CREATE TABLE "T_SPEEDALERT"
(
  "ID" character varying(64) NOT NULL,
  "CARCODE" character varying(32),
  "CARNAME" character varying(32),
  "SPEED" double precision,
  "LON" double precision,
  "LAT" double precision,
  "LOCATIONTIME" character varying(32),
  CONSTRAINT "T_SPEEDALERT_pkey" PRIMARY KEY ("ID" )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_SPEEDALERT"
  OWNER TO postgres;

CREATE TABLE "T_TL"
(
  geom geometry(MultiLineString,4326),
  "NAME" character varying(64),
  "ID" character varying(32) NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_TL"
  OWNER TO postgres;


CREATE TABLE "T_TL1"
(
  "ID" character varying(32) NOT NULL, -- 编号，主键
  "NAME" character varying(64), -- 名称
  geom geometry(LineString)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_TL1"
  OWNER TO postgres;
COMMENT ON TABLE "T_TL1"
  IS '铁路';
COMMENT ON COLUMN "T_TL1"."ID" IS '编号，主键';
COMMENT ON COLUMN "T_TL1"."NAME" IS '名称';

CREATE TABLE "T_TXXL"
(
  "ID" character varying(32) NOT NULL,
  geom geometry(LineString),
  "NAME" character varying(64), -- 线路名称
  "LAYINGPATH" character varying(128), -- 路径
  "UNIT" character varying(128), -- 产权单位
  "LAYINGMETHOD" character varying(64), -- 敷设方式
  "SPECMODEL" character varying(64) -- 规格型号
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_TXXL"
  OWNER TO postgres;
COMMENT ON TABLE "T_TXXL"
  IS '通信线路';
COMMENT ON COLUMN "T_TXXL"."NAME" IS '线路名称';
COMMENT ON COLUMN "T_TXXL"."LAYINGPATH" IS '路径';
COMMENT ON COLUMN "T_TXXL"."UNIT" IS '产权单位';
COMMENT ON COLUMN "T_TXXL"."LAYINGMETHOD" IS '敷设方式';
COMMENT ON COLUMN "T_TXXL"."SPECMODEL" IS '规格型号';

CREATE TABLE "T_XHXL"
(
  "ID" character varying(32) NOT NULL,
  geom geometry(LineString),
  "NAME" character varying(64), -- 线路名称
  "LAYINGPATH" character varying(128), -- 路径
  "UNIT" character varying(128), -- 产权单位
  "LAYINGMETHOD" character varying(64), -- 敷设方式
  "SPECMODEL" character varying(64) -- 规格型号
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "T_XHXL"
  OWNER TO postgres;
COMMENT ON TABLE "T_XHXL"
  IS '信号线路';
COMMENT ON COLUMN "T_XHXL"."NAME" IS '线路名称';
COMMENT ON COLUMN "T_XHXL"."LAYINGPATH" IS '路径';
COMMENT ON COLUMN "T_XHXL"."UNIT" IS '产权单位';
COMMENT ON COLUMN "T_XHXL"."LAYINGMETHOD" IS '敷设方式';
COMMENT ON COLUMN "T_XHXL"."SPECMODEL" IS '规格型号';

CREATE TABLE abc
(
  "ID" integer NOT NULL,
  "XSCC" integer,
  geompoint geometry(Point),
  geomline geometry(LineString),
  geompolygon geometry(Polygon)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE abc
  OWNER TO postgres;

CREATE TABLE grid2000
(
  gid serial NOT NULL,
  geom geometry(MultiPolygon),
  fid integer,
  cx numeric,
  cy numeric,
  ch numeric,
  cao numeric,
  mgo numeric,
  CONSTRAINT grid2000_pkey PRIMARY KEY (gid )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE grid2000
  OWNER TO postgres;

-- Index: grid2000_geom_gist

-- DROP INDEX grid2000_geom_gist;

CREATE INDEX grid2000_geom_gist
  ON grid2000
  USING gist
  (geom );

CREATE TABLE metering
(
  id character varying(64) NOT NULL,
  coords character varying(128),
  CONSTRAINT metering_pkey PRIMARY KEY (id )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE metering
  OWNER TO postgres;

