INSERT INTO project(Project_ID, Project_Name, Client_Name, Project_Description, Base_Directory, Database_Connection_ID) VALUES('rwfL+ImPqfvoAakWlIom4Q', 'APC Clinic Management System', 'Asia Pacific College', 'Softdev Project', 'clinic', 'fVPuJCSQgvZFjLlGAUeG3A');


INSERT INTO database_connection(DB_Connection_ID, Project_ID, DB_Connection_Name, Hostname, Username, Password, "Database") VALUES('qPNgCW6v9XJggUTmIlCOEg', 'rwfL+ImPqfvoAakWlIom4Q', 'con1', 'localhost', 'root', '','clinic');
INSERT INTO database_connection(DB_Connection_ID, Project_ID, DB_Connection_Name, Hostname, Username, Password, "Database") VALUES('fVPuJCSQgvZFjLlGAUeG3A', 'rwfL+ImPqfvoAakWlIom4Q', 'con2', 'localhost', 'root', '','clinic');


INSERT INTO "table"(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('LmGrPNsGpHCLJI7aG9N0Pw', 'rwfL+ImPqfvoAakWlIom4Q', 'qPNgCW6v9XJggUTmIlCOEg', 'dept', '');
INSERT INTO "table"(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('aE+drjzmfNJY5/cbswVFoA', 'rwfL+ImPqfvoAakWlIom4Q', 'qPNgCW6v9XJggUTmIlCOEg', 'emergencycase', '');
INSERT INTO "table"(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('IL+HMH/sR5jjGD8n54zGfw', 'rwfL+ImPqfvoAakWlIom4Q', 'qPNgCW6v9XJggUTmIlCOEg', 'employee', '');
INSERT INTO "table"(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('DgmSe6zHYab4KAIz1Rc8YQ', 'rwfL+ImPqfvoAakWlIom4Q', 'qPNgCW6v9XJggUTmIlCOEg', 'hospital', '');
INSERT INTO "table"(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('rhBEa49XAO93s7hTJOJNCw', 'rwfL+ImPqfvoAakWlIom4Q', 'qPNgCW6v9XJggUTmIlCOEg', 'log_info', '');
INSERT INTO "table"(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('NGLNfaSW2stq0BSXFp95kw', 'rwfL+ImPqfvoAakWlIom4Q', 'qPNgCW6v9XJggUTmIlCOEg', 'medicine', '');
INSERT INTO "table"(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('rPmo16xPA0txCK/LM7MHpA', 'rwfL+ImPqfvoAakWlIom4Q', 'qPNgCW6v9XJggUTmIlCOEg', 'refempfamily', '');
INSERT INTO "table"(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('V6AY6uzDsLbzRyVP7Gl2NA', 'rwfL+ImPqfvoAakWlIom4Q', 'qPNgCW6v9XJggUTmIlCOEg', 'refstudent', '');
INSERT INTO "table"(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('AC5efmEu35UQF1me3WmNJA', 'rwfL+ImPqfvoAakWlIom4Q', 'qPNgCW6v9XJggUTmIlCOEg', 'refstudentclearance', '');
INSERT INTO "table"(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('QIS8isZZUPbxQxdyxEbTWg', 'rwfL+ImPqfvoAakWlIom4Q', 'qPNgCW6v9XJggUTmIlCOEg', 'refstudentfamily', '');
INSERT INTO "table"(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('w8hKS8a239ni4Gcyhu6hKQ', 'rwfL+ImPqfvoAakWlIom4Q', 'qPNgCW6v9XJggUTmIlCOEg', 'refsubjectofferingdtl', '');
INSERT INTO "table"(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('Isp6D19CVk2T8ycHg4Pdcg', 'rwfL+ImPqfvoAakWlIom4Q', 'qPNgCW6v9XJggUTmIlCOEg', 'refsubjectofferinghdr', '');
INSERT INTO "table"(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('XaIiJ8T8K2YB7M+jcmp1Dw', 'rwfL+ImPqfvoAakWlIom4Q', 'qPNgCW6v9XJggUTmIlCOEg', 'required_appointment', '');
INSERT INTO "table"(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('97ycq2Rrft3nzw9LCIi1pg', 'rwfL+ImPqfvoAakWlIom4Q', 'qPNgCW6v9XJggUTmIlCOEg', 'subject', '');
INSERT INTO "table"(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('mQb/GgbPc9po2f92GrFEmw', 'rwfL+ImPqfvoAakWlIom4Q', 'qPNgCW6v9XJggUTmIlCOEg', 'term', '');
INSERT INTO "table"(Table_ID, Project_ID, DB_Connection_ID, Table_Name, Remarks) VALUES('57+Ht04YCmxFy1c5NpkiIg', 'rwfL+ImPqfvoAakWlIom4Q', 'qPNgCW6v9XJggUTmIlCOEg', 'xrefstudentschedule', '');


INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('nMeMiS/yRCx/Om2RrMjhcg', 'LmGrPNsGpHCLJI7aG9N0Pw', 'dept_id', 'integer', 'FALSE', '20', 'primary key', 'none', 'Dept ID', 'FALSE', 'TRUE', '', 'FALSE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('EUia5nUxTxF4Dk6lFKAhzw', 'LmGrPNsGpHCLJI7aG9N0Pw', 'dept_code', 'varchar', 'TRUE', '30', '', 'textbox', 'Dept Code', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('4SW0oj6sa2gz5uyUqHob1w', 'LmGrPNsGpHCLJI7aG9N0Pw', 'dept_description', 'varchar', 'FALSE', '75', '', 'textbox', 'Dept Description', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('/6EO4LAd5CR3NkQt6NSyQQ', 'LmGrPNsGpHCLJI7aG9N0Pw', 'dept_assign', 'varchar', 'FALSE', '255', '', 'textbox', 'Dept Assign', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('Qm5eJmn2C2gA+FFJqZrMWw', 'LmGrPNsGpHCLJI7aG9N0Pw', 'is_deleted', 'varchar', 'TRUE', '255', '', 'textbox', 'Is Deleted', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('+x7OJdtPXexOoTGQE3JInQ', 'aE+drjzmfNJY5/cbswVFoA', 'id', 'integer', 'FALSE', '20', 'primary key', 'none', 'ID', 'FALSE', 'TRUE', '', 'FALSE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('2q6cCMdauN0zD/IR6GLIJQ', 'aE+drjzmfNJY5/cbswVFoA', 'date', 'varchar', 'FALSE', '255', '', 'textbox', 'Date', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('i5YFi6PZpRM4FBHOOxjjLg', 'aE+drjzmfNJY5/cbswVFoA', 'type', 'varchar', 'FALSE', '255', '', 'textbox', 'Type', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('zF1ZJrwq+mt7GZSKxTNgjg', 'aE+drjzmfNJY5/cbswVFoA', 'name', 'varchar', 'FALSE', '255', '', 'textbox', 'Name', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('48uxiNmiqfLtIK+B7/drYw', 'aE+drjzmfNJY5/cbswVFoA', 'id_number', 'varchar', 'TRUE', '11', '', 'textbox', 'ID Number', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('BZSMip9X5sR98yr4b30tFg', 'aE+drjzmfNJY5/cbswVFoA', 'location', 'varchar', 'TRUE', '255', '', 'textbox', 'Location', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('rkFFGNvW0NCFCBM/5dKFxg', 'aE+drjzmfNJY5/cbswVFoA', 'diagnosis', 'text', 'TRUE', '0', '', 'textarea', 'Diagnosis', 'TRUE', 'FALSE', '', 'TRUE', '58;5', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('Z807onsHvPKQoF78JL8bvQ', 'aE+drjzmfNJY5/cbswVFoA', 'hospital_id', 'integer', 'FALSE', '20', 'foreign key', 'drop-down list', 'Hospital', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('uPQNOhk9V0cvXf5XNHbREQ', 'aE+drjzmfNJY5/cbswVFoA', 'escorted_by', 'varchar', 'TRUE', '255', '', 'textbox', 'Escorted By', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('Wqtwd29aOXqMkgTM+ovWxA', 'aE+drjzmfNJY5/cbswVFoA', 'guarantee_control_no', 'varchar', 'TRUE', '255', '', 'textbox', 'Guarantee Control No', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('KAcoLAxUjyehPmfmR/0puA', 'IL+HMH/sR5jjGD8n54zGfw', 'emp_id', 'varchar', 'FALSE', '10', 'primary key', 'textbox', 'Emp ID', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('u92qdTW83iPAakdspH3Auw', 'IL+HMH/sR5jjGD8n54zGfw', 'emp_last_name', 'varchar', 'FALSE', '25', '', 'textbox', 'Emp Last Name', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('YnoNKWEbV6E9FyJF/8KJqA', 'IL+HMH/sR5jjGD8n54zGfw', 'emp_first_name', 'varchar', 'FALSE', '30', '', 'textbox', 'Emp First Name', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('vyTKgANE2V8luPmoAdeMqw', 'IL+HMH/sR5jjGD8n54zGfw', 'emp_middle_name', 'varchar', 'FALSE', '25', '', 'textbox', 'Emp Middle Name', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('Aso35xjwM2Db4KH/JjNxyQ', 'IL+HMH/sR5jjGD8n54zGfw', 'email', 'varchar', 'FALSE', '25', '', 'textbox', 'Email', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('yegpuWUYX50IIMleZfScYA', 'IL+HMH/sR5jjGD8n54zGfw', 'emp_status', 'integer', 'FALSE', '20', '', 'textbox', 'Emp Status', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'number_format2', 'right', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('D6LJTWjZiZjeOUCrsbyrsw', 'IL+HMH/sR5jjGD8n54zGfw', 'emp_group', 'integer', 'FALSE', '20', '', 'textbox', 'Emp Group', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'number_format2', 'right', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('dgN85cJCT3TGcy20uXA8YA', 'IL+HMH/sR5jjGD8n54zGfw', 'address', 'varchar', 'FALSE', '255', '', 'textarea', 'Address', 'FALSE', 'FALSE', '', 'TRUE', '58;5', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('WrfyWfLlqn8epmsmpvwkHg', 'IL+HMH/sR5jjGD8n54zGfw', 'postal_code', 'varchar', 'FALSE', '4', '', 'textbox', 'Postal Code', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('MbRNRv1lCsyCgXeSD0Pifg', 'IL+HMH/sR5jjGD8n54zGfw', 'tel_num', 'varchar', 'FALSE', '40', '', 'textbox', 'Tel Num', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('5e/XFVYyD0yn6dvcxDAAkg', 'IL+HMH/sR5jjGD8n54zGfw', 'mobile_num', 'varchar', 'FALSE', '15', '', 'textbox', 'Mobile Num', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('I3o0oOTZFWUxCHMHTfLz/A', 'IL+HMH/sR5jjGD8n54zGfw', 'hiring_date', 'date', 'TRUE', '0', '', 'date controls', 'Hiring Date', 'FALSE', 'FALSE', '', 'TRUE', '', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('VukSmgSlvhjrbjWkecfYkQ', 'IL+HMH/sR5jjGD8n54zGfw', 'resignation_date', 'date', 'TRUE', '0', '', 'date controls', 'Resignation Date', 'FALSE', 'FALSE', '', 'TRUE', '', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('7vgfFfEbvzqdBnYKGXE+iw', 'IL+HMH/sR5jjGD8n54zGfw', 'gender', 'varchar', 'TRUE', '255', '', 'textbox', 'Gender', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('XuQxkXiBX8tr10GuOCjC9g', 'IL+HMH/sR5jjGD8n54zGfw', 'civil_status', 'varchar', 'TRUE', '255', '', 'textbox', 'Civil Status', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('0TVgSEyyzwTKaHbVgMMVMw', 'IL+HMH/sR5jjGD8n54zGfw', 'birth_date', 'date', 'TRUE', '0', '', 'date controls', 'Birth Date', 'FALSE', 'FALSE', '', 'TRUE', '', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('aQEd26z+XZyGgHd/69rkbw', 'IL+HMH/sR5jjGD8n54zGfw', 'birth_place', 'varchar', 'TRUE', '255', '', 'textbox', 'Birth Place', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('MhbElKXBJP87gplkmnEiaA', 'IL+HMH/sR5jjGD8n54zGfw', 'religion', 'varchar', 'TRUE', '255', '', 'textbox', 'Religion', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('Revdcw614+wFl/Dkmmg3sA', 'IL+HMH/sR5jjGD8n54zGfw', 'is_deleted', 'varchar', 'TRUE', '255', '', 'textbox', 'Is Deleted', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('CEoyu0z068MJDc1XOJ554g', 'IL+HMH/sR5jjGD8n54zGfw', 'ATM_num', 'varchar', 'FALSE', '25', '', 'textbox', 'ATM Num', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('AVbwT5wLitCwzPDBGdfJ2g', 'IL+HMH/sR5jjGD8n54zGfw', 'BDO_ATM_num', 'varchar', 'FALSE', '25', '', 'textbox', 'BDO ATM Num', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('fI0PPIFL0cKpfY2XdZq2oQ', 'IL+HMH/sR5jjGD8n54zGfw', 'SSS_num', 'varchar', 'FALSE', '25', '', 'textbox', 'SSS Num', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('iFKrADWjQQLiqJPPkf5+CQ', 'IL+HMH/sR5jjGD8n54zGfw', 'PhilHealth_num', 'varchar', 'FALSE', '25', '', 'textbox', 'PhilHealth Num', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('6k0Lswa71E3x46p7VVJL7A', 'IL+HMH/sR5jjGD8n54zGfw', 'TIN_num', 'varchar', 'FALSE', '25', '', 'textbox', 'TIN Num', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('yt03zjaLu2wNGiOYcz2i2A', 'IL+HMH/sR5jjGD8n54zGfw', 'PagIbig_num', 'varchar', 'FALSE', '25', '', 'textbox', 'PagIbig Num', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('b6n44oJIRMlq79w+qAZS/g', 'DgmSe6zHYab4KAIz1Rc8YQ', 'hospital_id', 'integer', 'FALSE', '20', 'primary key', 'none', 'Hospital ID', 'FALSE', 'TRUE', '', 'FALSE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('NiWoLMQ5J/zzXndeNhcsGg', 'DgmSe6zHYab4KAIz1Rc8YQ', 'hospital_name', 'varchar', 'FALSE', '255', '', 'textbox', 'Hospital Name', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('YtmOP/ve/GLk4ledRFbEtg', 'DgmSe6zHYab4KAIz1Rc8YQ', 'tel_number', 'varchar', 'FALSE', '7', '', 'textbox', 'Tel Number', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('ERrslupVjiklPTc0I5qjZQ', 'DgmSe6zHYab4KAIz1Rc8YQ', 'mobile_number', 'varchar', 'FALSE', '11', '', 'textbox', 'Mobile Number', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('PpSgYwr2aujfLIuwZLa+Yw', 'DgmSe6zHYab4KAIz1Rc8YQ', 'address', 'varchar', 'FALSE', '255', '', 'textarea', 'Address', 'TRUE', 'FALSE', '', 'TRUE', '58;5', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('iAWpOG6MAeagD+v5eyvPHQ', 'rhBEa49XAO93s7hTJOJNCw', 'log_id', 'integer', 'FALSE', '20', 'primary key', 'none', 'Log ID', 'FALSE', 'TRUE', '', 'FALSE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('GWF21+lbOwX7eL+xLpqadw', 'rhBEa49XAO93s7hTJOJNCw', 'date', 'date', 'FALSE', '0', '', 'date controls', 'Date', 'TRUE', 'FALSE', '', 'TRUE', '', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('mROMbMjfkt9UiHuQ3z5Eiw', 'rhBEa49XAO93s7hTJOJNCw', 'time', 'varchar', 'FALSE', '255', '', 'textbox', 'Time', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('uBBj15lsCppTXv/rGpj+Gg', 'rhBEa49XAO93s7hTJOJNCw', 'complaints', 'varchar', 'FALSE', '255', '', 'textbox', 'Complaints', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('c+H+E2JopFs1rad4x0k8XQ', 'rhBEa49XAO93s7hTJOJNCw', 'medicine_id', 'integer', 'FALSE', '20', 'foreign key', 'drop-down list', 'Medicine', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('aGaiXEwxI90OP0GlNQ9q7Q', 'rhBEa49XAO93s7hTJOJNCw', 'student_id', 'varchar', 'TRUE', '11', 'foreign key', 'drop-down list', 'Student', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('lBHRQiaExAnyG4QvBWw+ag', 'rhBEa49XAO93s7hTJOJNCw', 'emp_id', 'varchar', 'TRUE', '10', 'foreign key', 'drop-down list', 'Emp', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('tpBExgMkWF4FPBhLMAWLkg', 'NGLNfaSW2stq0BSXFp95kw', 'medicine_id', 'integer', 'FALSE', '20', 'primary key', 'textbox', 'Medicine ID', 'FALSE', 'TRUE', '', 'FALSE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('dZI+SapJ2lgDrqpE38li0w', 'NGLNfaSW2stq0BSXFp95kw', 'medicine_name', 'varchar', 'TRUE', '45', '', 'textbox', 'Medicine Name', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('F/Arcs1vWsFyxyf8OrpaWg', 'NGLNfaSW2stq0BSXFp95kw', 'qty', 'varchar', 'TRUE', '1', '', 'textbox', 'Qty', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('5y16fDfVGn5gLNstwJ3UFw', 'rPmo16xPA0txCK/LM7MHpA', 'family_id', 'integer', 'FALSE', '20', 'primary key', 'none', 'Family ID', 'FALSE', 'TRUE', '', 'FALSE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('zK/E2q50nwkQTjHs1lKFUg', 'rPmo16xPA0txCK/LM7MHpA', 'emp_id', 'varchar', 'FALSE', '11', 'foreign key', 'drop-down list', 'Emp', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('APDrl9BapRH/aGOouillkw', 'rPmo16xPA0txCK/LM7MHpA', 'relationship', 'varchar', 'FALSE', '255', 'none', 'drop-down list', 'Relationship', 'TRUE', 'FALSE', '', 'TRUE', '20', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('eOmCTuxIiJ11YwAL3klhcg', 'rPmo16xPA0txCK/LM7MHpA', 'name', 'varchar', 'TRUE', '255', '', 'textbox', 'Name', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('cOST4Mcg57/5LA+fUScH8w', 'rPmo16xPA0txCK/LM7MHpA', 'email', 'varchar', 'TRUE', '255', '', 'textbox', 'Email', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('FTGKUJUVuMzl8uGQUAYUjg', 'rPmo16xPA0txCK/LM7MHpA', 'email_status', 'varchar', 'FALSE', '255', '', 'textbox', 'Email Status', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('7tu3EqP7qq460HX2PxidMQ', 'rPmo16xPA0txCK/LM7MHpA', 'address_type', 'varchar', 'FALSE', '255', '', 'textbox', 'Address Type', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('qP55JmBwZUrOatR4f06yXw', 'rPmo16xPA0txCK/LM7MHpA', 'address', 'varchar', 'FALSE', '255', '', 'textarea', 'Address', 'TRUE', 'FALSE', '', 'TRUE', '58;5', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('HhBNlO7YMEIatEePozePNw', 'rPmo16xPA0txCK/LM7MHpA', 'postal_code', 'varchar', 'TRUE', '4', 'none', 'textbox', 'Postal Code', 'FALSE', 'FALSE', '', 'TRUE', '30', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('L/RQm8gOG9m0jDQdD8GUuw', 'rPmo16xPA0txCK/LM7MHpA', 'mobile_num1', 'varchar', 'TRUE', '255', 'none', 'textbox', 'Mobile No.1', 'FALSE', 'FALSE', '', 'TRUE', '20', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('t+gwgg9fhwUsZzwWLKNfUA', 'rPmo16xPA0txCK/LM7MHpA', 'tel_num', 'varchar', 'TRUE', '255', 'none', 'textbox', 'Telephone No.', 'FALSE', 'FALSE', '', 'TRUE', '20', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('Sgzo69Z8JIzOGNrxH9mMng', 'rPmo16xPA0txCK/LM7MHpA', 'mobile_num2', 'varchar', 'TRUE', '255', 'none', 'textbox', 'Mobile No.2 (Optional)', 'FALSE', 'FALSE', '', 'TRUE', '20', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('gveD9EiEAaVsd7+qJYwuDg', 'V6AY6uzDsLbzRyVP7Gl2NA', 'student_id', 'varchar', 'FALSE', '11', 'primary key', 'textbox', 'Student ID', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('R/yd96hYvIkx/RJBkrcfgg', 'V6AY6uzDsLbzRyVP7Gl2NA', 'student_last_name', 'varchar', 'FALSE', '25', '', 'textbox', 'Student Last Name', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('ZKyXJdjLKAYY0NGewFjYTw', 'V6AY6uzDsLbzRyVP7Gl2NA', 'student_first_name', 'varchar', 'FALSE', '30', '', 'textbox', 'Student First Name', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('7kczUBD/WmaEOoe7+BikzA', 'V6AY6uzDsLbzRyVP7Gl2NA', 'student_middle_name', 'varchar', 'FALSE', '25', '', 'textbox', 'Student Middle Name', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('f6bNA2UKP5X6498/BMzbBA', 'V6AY6uzDsLbzRyVP7Gl2NA', 'birth_date', 'date', 'FALSE', '0', '', 'date controls', 'Birth Date', 'TRUE', 'FALSE', '', 'TRUE', '', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('nJVbfRueFqZ9YMn1r6kz7A', 'V6AY6uzDsLbzRyVP7Gl2NA', 'birth_place', 'varchar', 'FALSE', '35', '', 'textbox', 'Birth Place', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('opyyUu1SB9njGbBT/PcUpw', 'V6AY6uzDsLbzRyVP7Gl2NA', 'admission_date', 'date', 'FALSE', '0', '', 'date controls', 'Admission Date', 'TRUE', 'FALSE', '', 'TRUE', '', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('gNuWgLE4f25ttnZ7GH0B4g', 'V6AY6uzDsLbzRyVP7Gl2NA', 'entry_level', 'varchar', 'TRUE', '255', '', 'textbox', 'Entry Level', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('Dv6j448WxuVnihR5IiBEgg', 'V6AY6uzDsLbzRyVP7Gl2NA', 'admission_credential', 'varchar', 'TRUE', '2500', '', 'textbox', 'Admission Credential', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('GF1ev02g4IRVMRlh9L18qw', 'V6AY6uzDsLbzRyVP7Gl2NA', 'mail_grades_to', 'varchar', 'FALSE', '255', '', 'textbox', 'Mail Grades To', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('OKS+CvHMMZh7OwNnuwkbvg', 'V6AY6uzDsLbzRyVP7Gl2NA', 'exit_level', 'varchar', 'TRUE', '255', '', 'textbox', 'Exit Level', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('1iOqqkdbnuyeU51jOd2juA', 'V6AY6uzDsLbzRyVP7Gl2NA', 'nationality', 'varchar', 'FALSE', '255', '', 'textbox', 'Nationality', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('Op/u11PrgC0jJFr81AC8Pg', 'V6AY6uzDsLbzRyVP7Gl2NA', 'gender', 'varchar', 'FALSE', '255', '', 'textbox', 'Gender', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('DqPgZmjoqnEUtRUsnOIb9A', 'V6AY6uzDsLbzRyVP7Gl2NA', 'address', 'varchar', 'FALSE', '250', '', 'textarea', 'Address', 'FALSE', 'FALSE', '', 'TRUE', '58;5', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('dUkq1yCUjO4xUVgndqv7fQ', 'V6AY6uzDsLbzRyVP7Gl2NA', 'postal_code', 'varchar', 'TRUE', '250', '', 'textbox', 'Postal Code', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('wELpYB8UZDQSk0SvzN+hMA', 'V6AY6uzDsLbzRyVP7Gl2NA', 'tel_num', 'varchar', 'TRUE', '250', '', 'textbox', 'Tel Num', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('kBur1UItU5AWB/PMnxDgKg', 'V6AY6uzDsLbzRyVP7Gl2NA', 'mobile_num', 'varchar', 'TRUE', '255', '', 'textbox', 'Mobile Num', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('Xa28N2mtZX1XWAcWouZreQ', 'V6AY6uzDsLbzRyVP7Gl2NA', 'email', 'varchar', 'TRUE', '250', '', 'textbox', 'Email', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('OsCGFQljIPIUbon+3oatBA', 'V6AY6uzDsLbzRyVP7Gl2NA', 'religion', 'varchar', 'TRUE', '25', '', 'textbox', 'Religion', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('5nLIlf45p31pLppbJYhj2A', 'V6AY6uzDsLbzRyVP7Gl2NA', 'civil_status', 'varchar', 'FALSE', '255', '', 'textbox', 'Civil Status', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('Q2CVIEvuq5/rxUF2JA37Dw', 'V6AY6uzDsLbzRyVP7Gl2NA', 'box_num', 'varchar', 'FALSE', '250', '', 'textbox', 'Box Num', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('FuH97NOE87q045phOAMahw', 'AC5efmEu35UQF1me3WmNJA', 'id', 'integer', 'FALSE', '20', 'primary key', 'none', 'ID', 'FALSE', 'TRUE', '', 'FALSE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('bAeRnrJfHPi6J0lXABLR0Q', 'AC5efmEu35UQF1me3WmNJA', 'term_id', 'varchar', 'FALSE', '250', 'foreign key', 'drop-down list', 'Term', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('UMgySktF2WfL4FJPGWeTNA', 'AC5efmEu35UQF1me3WmNJA', 'date', 'date', 'FALSE', '0', '', 'date controls', 'Date', 'TRUE', 'FALSE', '', 'TRUE', '', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('h/U9+hZsEBjlMcS9BZMz/g', 'AC5efmEu35UQF1me3WmNJA', 'student_id', 'varchar', 'FALSE', '11', 'foreign key', 'drop-down list', 'Student', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('XVt8Spt1L/zDKFzOV3+RDQ', 'AC5efmEu35UQF1me3WmNJA', 'remarks', 'varchar', 'FALSE', '10000', '', 'textarea', 'Remarks', 'TRUE', 'FALSE', '', 'TRUE', '58;5', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('9ZLkoqiQWH5d6AuDw83Y8w', 'AC5efmEu35UQF1me3WmNJA', 'is_clear', 'varchar', 'FALSE', '255', '', 'textbox', 'Is Clear', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('Z96DcgAJk9Hx0JjSPu8Ytg', 'AC5efmEu35UQF1me3WmNJA', 'emp_id', 'varchar', 'FALSE', '250', 'none', 'textbox', 'Emp ID', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('qFag+UFnZ48RdYXy120W1g', 'AC5efmEu35UQF1me3WmNJA', 'dept_id', 'varchar', 'FALSE', '250', 'none', 'textbox', 'Dept ID', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('FQhehrUojCG4/rkYQNI/aQ', 'QIS8isZZUPbxQxdyxEbTWg', 'family_id', 'integer', 'FALSE', '20', 'primary key', 'none', 'Family ID', 'FALSE', 'TRUE', '', 'FALSE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('plg/JjZ1uJoTC1FjET0UPw', 'QIS8isZZUPbxQxdyxEbTWg', 'student_id', 'varchar', 'FALSE', '11', 'foreign key', 'drop-down list', 'Student', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('I/vMRJ2EeQJsRmdvy0Yx7Q', 'QIS8isZZUPbxQxdyxEbTWg', 'relationship', 'varchar', 'FALSE', '255', '', 'textbox', 'Relationship', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('nmnSWFrmMglgg9+GTD0BAg', 'QIS8isZZUPbxQxdyxEbTWg', 'name', 'varchar', 'TRUE', '250', '', 'textbox', 'Name', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('ZMi0FxvVEgiJKNU/KZP2oQ', 'QIS8isZZUPbxQxdyxEbTWg', 'email', 'varchar', 'TRUE', '250', '', 'textbox', 'Email', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('3kq0rNAtc4ppKkTW22HbKw', 'QIS8isZZUPbxQxdyxEbTWg', 'email_status', 'varchar', 'TRUE', '255', '', 'textbox', 'Email Status', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('XtSWUM5dm1yVxonQAEggog', 'QIS8isZZUPbxQxdyxEbTWg', 'address_type', 'varchar', 'TRUE', '255', '', 'textbox', 'Address Type', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('jkIUKe1z/l+58Ofkt1lpGw', 'QIS8isZZUPbxQxdyxEbTWg', 'address', 'varchar', 'FALSE', '250', '', 'textarea', 'Address', 'TRUE', 'FALSE', '', 'TRUE', '58;5', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('gVyvy9h++pfSJlVKsb5/Dw', 'QIS8isZZUPbxQxdyxEbTWg', 'postal_code', 'varchar', 'FALSE', '4', '', 'textbox', 'Postal Code', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('ch/eoOc0GuGtGWOz8xaV0w', 'QIS8isZZUPbxQxdyxEbTWg', 'tel_num', 'varchar', 'FALSE', '250', '', 'textbox', 'Tel Num', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('iipkKOjcaV+ZO6VUisjvIw', 'QIS8isZZUPbxQxdyxEbTWg', 'mobile_num1', 'varchar', 'FALSE', '250', '', 'textbox', 'Mobile Num1', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('jPINk0EKYPmeszclkGbAJw', 'QIS8isZZUPbxQxdyxEbTWg', 'mobile_num2', 'varchar', 'FALSE', '250', '', 'textbox', 'Mobile Num2', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('luFGaIX1gProIZlPqm+ziA', 'QIS8isZZUPbxQxdyxEbTWg', 'attended', 'varchar', 'TRUE', '255', '', 'textbox', 'Attended', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('WgzsCn5cDqKKnMk9Csg2pA', 'w8hKS8a239ni4Gcyhu6hKQ', 'subject_offering_id', 'integer', 'FALSE', '20', 'primary&foreign key', 'drop-down list', 'Subject Offering', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('SLjxV18121VFgoo6F6p6pQ', 'w8hKS8a239ni4Gcyhu6hKQ', 'time', 'varchar', 'TRUE', '17', '', 'textbox', 'Time', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('qJolMkykDZYb6AsnSKlSnA', 'w8hKS8a239ni4Gcyhu6hKQ', 'time_start', 'integer', 'FALSE', '20', '', 'textbox', 'Time Start', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'number_format2', 'right', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('fvgYioKmOa/geDpL2Ykf0A', 'w8hKS8a239ni4Gcyhu6hKQ', 'time_end', 'integer', 'FALSE', '20', '', 'textbox', 'Time End', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'number_format2', 'right', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('/nLfDRMXK8VIaVl9y89+Dg', 'w8hKS8a239ni4Gcyhu6hKQ', 'day', 'varchar', 'TRUE', '3', '', 'textbox', 'Day', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('v/LN3i3s1faNfojfE9S6Ag', 'w8hKS8a239ni4Gcyhu6hKQ', 'room', 'varchar', 'FALSE', '5', '', 'textbox', 'Room', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('39pyqM1kk7uFSVfeI5+ayw', 'w8hKS8a239ni4Gcyhu6hKQ', 'room_type', 'varchar', 'FALSE', '255', '', 'textbox', 'Room Type', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('AyOdYBS1DAAH1MRUAcARWQ', 'Isp6D19CVk2T8ycHg4Pdcg', 'subject_offering_id', 'integer', 'FALSE', '20', 'primary key', 'textbox', 'Subject Offering ID', 'FALSE', 'TRUE', '', 'FALSE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('PXDf39boh1/M1puywMKzQA', 'Isp6D19CVk2T8ycHg4Pdcg', 'term_id', 'integer', 'FALSE', '20', 'foreign key', 'drop-down list', 'Term', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('8EKo9nLCrCp8YLmCL8ymZw', 'Isp6D19CVk2T8ycHg4Pdcg', 'subject_id', 'integer', 'FALSE', '20', 'none', 'textbox', 'Subject ID', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('8icRrqrYgcz6DSCjyuVJDQ', 'Isp6D19CVk2T8ycHg4Pdcg', 'section', 'varchar', 'TRUE', '255', '', 'textbox', 'Section', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('nrw8tW+WOhOszXfTeKq8BQ', 'Isp6D19CVk2T8ycHg4Pdcg', 'subject_code', 'varchar', 'FALSE', '250', '', 'textbox', 'Subject Code', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('ohV88d79CoZq49Z37SbQAw', 'XaIiJ8T8K2YB7M+jcmp1Dw', 'required_appointment_id', 'integer', 'FALSE', '20', 'primary key', 'none', 'Required Appointment ID', 'FALSE', 'TRUE', '', 'FALSE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('wjRnD7G0UTMfcgJavb0p2g', 'XaIiJ8T8K2YB7M+jcmp1Dw', 'student_id', 'varchar', 'FALSE', '11', 'none', 'textbox', 'Student ID', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('MquHlSud4AVDHuAC3OLo7g', 'XaIiJ8T8K2YB7M+jcmp1Dw', 'date', 'date', 'FALSE', '0', '', 'date controls', 'Date', 'TRUE', 'FALSE', '', 'TRUE', '', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('01sVEHBPVQw/p221fVu95w', 'XaIiJ8T8K2YB7M+jcmp1Dw', 'time_start', 'integer', 'FALSE', '20', '', 'textbox', 'Time Start', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'number_format2', 'right', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('ZzjcnG9KQorWVk26e7Mtzg', 'XaIiJ8T8K2YB7M+jcmp1Dw', 'time_end', 'integer', 'FALSE', '20', '', 'textbox', 'Time End', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'number_format2', 'right', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('vZifrbXLqy9XHsLuB5ybsw', 'XaIiJ8T8K2YB7M+jcmp1Dw', 'status', 'varchar', 'TRUE', '255', '', 'textbox', 'Status', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('vpqYyRrdQ3N+G3e4+uHC8A', 'XaIiJ8T8K2YB7M+jcmp1Dw', 'subject_offering_id', 'integer', 'TRUE', '20', 'foreign key', 'drop-down list', 'Subject Offering', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('kWe9Su4lX6k7t7AccOSUeQ', '97ycq2Rrft3nzw9LCIi1pg', 'subject_id', 'integer', 'FALSE', '20', 'primary key', 'none', 'Subject ID', 'FALSE', 'TRUE', '', 'FALSE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('wP6t0biq4Ar1WuyTgoMmag', '97ycq2Rrft3nzw9LCIi1pg', 'term_id', 'integer', 'FALSE', '20', 'foreign key', 'drop-down list', 'Term', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('BKmXIPkgSj96hrh14V0+5A', '97ycq2Rrft3nzw9LCIi1pg', 'subject_code', 'varchar', 'FALSE', '10', '', 'textbox', 'Subject Code', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('m6DBospv33eHvRUk17pElQ', '97ycq2Rrft3nzw9LCIi1pg', 'subject_name', 'varchar', 'FALSE', '100', '', 'textbox', 'Subject Name', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('F+7Z6bPfFs1gyFcBA7CmEQ', '97ycq2Rrft3nzw9LCIi1pg', 'subject_description', 'varchar', 'FALSE', '50000', '', 'textbox', 'Subject Description', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('rMoMsOwhSMKKXApA7HEWGw', '97ycq2Rrft3nzw9LCIi1pg', 'unit', 'decimal', 'FALSE', '20', '', 'textbox', 'Unit', 'TRUE', 'FALSE', '', 'TRUE', '20', '', '', '', 'generate_num_set', 'FALSE', '. ,', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'number_format2', 'right', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('h8/+Xs/Vj9yh7Wm8F3eZug', '97ycq2Rrft3nzw9LCIi1pg', 'pay_unit', 'decimal', 'FALSE', '20', '', 'textbox', 'Pay Unit', 'TRUE', 'FALSE', '', 'TRUE', '20', '', '', '', 'generate_num_set', 'FALSE', '. ,', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'number_format2', 'right', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('YgwpwwvDMNv3FRL9Yr9QEQ', '97ycq2Rrft3nzw9LCIi1pg', 'compute_GPA', 'varchar', 'TRUE', '1', '', 'textbox', 'Compute GPA', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('47nUk5ZYIa9VEAuiVKgnDg', '97ycq2Rrft3nzw9LCIi1pg', 'lab_id', 'varchar', 'TRUE', '1', '', 'textbox', 'Lab ID', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('NOiPeospQJcAQwPpX/30jQ', '97ycq2Rrft3nzw9LCIi1pg', 'group_owner', 'varchar', 'TRUE', '25', '', 'textbox', 'Group Owner', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('DhD/mhB/R/ZH9+MvUPjU3Q', '97ycq2Rrft3nzw9LCIi1pg', 'evaluate_OTE', 'varchar', 'TRUE', '1', '', 'textbox', 'Evaluate OTE', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('5VTnC14aT3iNGVMgN1E/kQ', '97ycq2Rrft3nzw9LCIi1pg', 'is_elective', 'varchar', 'TRUE', '1', '', 'textbox', 'Is Elective', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('Di8mqaDFmGL6bBa7A9EMRg', '97ycq2Rrft3nzw9LCIi1pg', 'grade_type', 'varchar', 'TRUE', '1', '', 'textbox', 'Grade Type', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('VMbRUXvJN33v98xN4tOvcg', '97ycq2Rrft3nzw9LCIi1pg', 'accept_substitute', 'varchar', 'TRUE', '1', '', 'textbox', 'Accept Substitute', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('gDjEhHTs1efWXM5Ja+RJCw', '97ycq2Rrft3nzw9LCIi1pg', 'lab_type_id', 'varchar', 'TRUE', '1', '', 'textbox', 'Lab Type ID', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('9d9HIwRkFtRCHyUx4v4HpA', '97ycq2Rrft3nzw9LCIi1pg', 'dept_id', 'integer', 'FALSE', '20', 'foreign key', 'drop-down list', 'Dept', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('3bDlg/bs4gC0B1fL1LTvaQ', '97ycq2Rrft3nzw9LCIi1pg', 'category', 'integer', 'FALSE', '20', '', 'textbox', 'Category', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'number_format2', 'right', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('W6VGjFdPFcD0/jBTqZiX4g', '97ycq2Rrft3nzw9LCIi1pg', 'assess_note', 'varchar', 'FALSE', '255', '', 'textbox', 'Assess Note', 'FALSE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('oazmbLEKfQnL2JG3BIdKCw', 'mQb/GgbPc9po2f92GrFEmw', 'term_id', 'integer', 'FALSE', '20', 'primary key', 'none', 'Term ID', 'FALSE', 'TRUE', '', 'FALSE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('vuPDADbidO8s3Pz8tQQgOg', 'mQb/GgbPc9po2f92GrFEmw', 'school_year', 'year', 'FALSE', '4', '', 'textbox', 'School Year', 'TRUE', 'FALSE', '', 'TRUE', '4', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('inldeS4jLxqTEN+DCSQxkw', 'mQb/GgbPc9po2f92GrFEmw', 'term', 'varchar', 'FALSE', '255', '', 'textbox', 'Term', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('xrYUbOxp45eE61Kk+c7tKg', 'mQb/GgbPc9po2f92GrFEmw', 'term_start', 'date', 'TRUE', '0', '', 'date controls', 'Term Start', 'TRUE', 'FALSE', '', 'TRUE', '', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('TiTvlEacu4dMWyGk4KJw2g', 'mQb/GgbPc9po2f92GrFEmw', 'term_end', 'date', 'TRUE', '0', '', 'date controls', 'Term End', 'TRUE', 'FALSE', '', 'TRUE', '', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('ROwBv3SfNpacrYibst3Uvg', 'mQb/GgbPc9po2f92GrFEmw', 'reg_start', 'date', 'TRUE', '0', '', 'date controls', 'Reg Start', 'TRUE', 'FALSE', '', 'TRUE', '', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('MoiO2tzN/YkFxJp9h9QOEQ', 'mQb/GgbPc9po2f92GrFEmw', 'reg_end', 'date', 'TRUE', '0', '', 'date controls', 'Reg End', 'TRUE', 'FALSE', '', 'TRUE', '', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('drpCFMR3EM+deu/1xtDfjw', 'mQb/GgbPc9po2f92GrFEmw', 'install1', 'date', 'FALSE', '0', '', 'date controls', 'Install1', 'TRUE', 'FALSE', '', 'TRUE', '', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('c1aqVFjC2zM4xYkdOugHfg', 'mQb/GgbPc9po2f92GrFEmw', 'install2', 'date', 'FALSE', '0', '', 'date controls', 'Install2', 'FALSE', 'FALSE', '', 'TRUE', '', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('ezzdD0Vkfbk2s9HyBxSsPQ', '57+Ht04YCmxFy1c5NpkiIg', 'subject_offering_id', 'integer', 'FALSE', '20', 'primary key', 'textbox', 'Subject Offering ID', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', 'generate_num_set', 'FALSE', '-', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'TRUE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('RqgSCxed1w+93OBo6oNpGQ', '57+Ht04YCmxFy1c5NpkiIg', 'student_id', 'varchar', 'FALSE', '11', 'primary key', 'textbox', 'Student ID', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('GjfUsarQzYaZmfXR4ZtVjQ', '57+Ht04YCmxFy1c5NpkiIg', 'enrollment_status', 'varchar', 'TRUE', '255', '', 'textbox', 'Enrollment Status', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('+QHgRAYLkGCpmT7c6r15EA', '57+Ht04YCmxFy1c5NpkiIg', 'date', 'date', 'TRUE', '0', '', 'date controls', 'Date', 'TRUE', 'FALSE', '', 'TRUE', '', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('31pberS4KIs7+DIMSTZjfg', '57+Ht04YCmxFy1c5NpkiIg', 'term_id', 'varchar', 'FALSE', '250', 'none', 'textbox', 'Term ID', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'center', 'FALSE');
INSERT INTO table_fields(Field_ID, Table_ID, Field_Name, Data_Type, Nullable, Length, Attribute, Control_Type, Label, In_Listview, Auto_Increment,
                                           Default_Value, Required, Size, Upload_Path, Extra, Companion, Char_Set_Method, Char_Set_Allow_Space,
                                           Extra_Chars_Allowed, Allow_HTML_Tags, Trim_Value, Valid_Set, Date_Default, Drop_Down_Has_Blank, RPT_In_Report,
                                           RPT_Column_Format, RPT_Column_Alignment, RPT_Show_Sum) VALUES('nK5ShS1muoNucvDFAafijQ', '57+Ht04YCmxFy1c5NpkiIg', 'subject_code', 'varchar', 'FALSE', '250', '', 'textbox', 'Subject Code', 'TRUE', 'FALSE', '', 'TRUE', '60', '', '', '', '', 'TRUE', '', 'FALSE', 'trim', '', '', 'TRUE', 'TRUE', 'normal', 'left', 'FALSE');


INSERT INTO table_fields_list(Field_ID, List_ID) VALUES('APDrl9BapRH/aGOouillkw', 'IXKHBVOgXGy32kgjw2aepg');


INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('zK/E2q50nwkQTjHs1lKFUg', '', 'KAcoLAxUjyehPmfmR/0puA', 'No');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('zK/E2q50nwkQTjHs1lKFUg', '', 'KAcoLAxUjyehPmfmR/0puA', 'Yes');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('plg/JjZ1uJoTC1FjET0UPw', '', 'gveD9EiEAaVsd7+qJYwuDg', 'No');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('plg/JjZ1uJoTC1FjET0UPw', '', 'gveD9EiEAaVsd7+qJYwuDg', 'Yes');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('Z807onsHvPKQoF78JL8bvQ', '', 'b6n44oJIRMlq79w+qAZS/g', 'No');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('Z807onsHvPKQoF78JL8bvQ', '', 'NiWoLMQ5J/zzXndeNhcsGg', 'Yes');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('aGaiXEwxI90OP0GlNQ9q7Q', '', 'gveD9EiEAaVsd7+qJYwuDg', 'No');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('aGaiXEwxI90OP0GlNQ9q7Q', '', 'gveD9EiEAaVsd7+qJYwuDg', 'Yes');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('lBHRQiaExAnyG4QvBWw+ag', '', 'KAcoLAxUjyehPmfmR/0puA', 'No');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('lBHRQiaExAnyG4QvBWw+ag', '', 'KAcoLAxUjyehPmfmR/0puA', 'Yes');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('c+H+E2JopFs1rad4x0k8XQ', '', 'tpBExgMkWF4FPBhLMAWLkg', 'No');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('c+H+E2JopFs1rad4x0k8XQ', '', 'dZI+SapJ2lgDrqpE38li0w', 'Yes');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('bAeRnrJfHPi6J0lXABLR0Q', '', 'oazmbLEKfQnL2JG3BIdKCw', 'No');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('bAeRnrJfHPi6J0lXABLR0Q', '', 'vuPDADbidO8s3Pz8tQQgOg', 'Yes');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('bAeRnrJfHPi6J0lXABLR0Q', '', 'inldeS4jLxqTEN+DCSQxkw', 'Yes');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('h/U9+hZsEBjlMcS9BZMz/g', '', 'gveD9EiEAaVsd7+qJYwuDg', 'No');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('h/U9+hZsEBjlMcS9BZMz/g', '', 'gveD9EiEAaVsd7+qJYwuDg', 'Yes');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('wP6t0biq4Ar1WuyTgoMmag', '', 'oazmbLEKfQnL2JG3BIdKCw', 'No');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('wP6t0biq4Ar1WuyTgoMmag', '', 'vuPDADbidO8s3Pz8tQQgOg', 'Yes');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('wP6t0biq4Ar1WuyTgoMmag', '', 'inldeS4jLxqTEN+DCSQxkw', 'Yes');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('9d9HIwRkFtRCHyUx4v4HpA', '', 'nMeMiS/yRCx/Om2RrMjhcg', 'No');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('9d9HIwRkFtRCHyUx4v4HpA', '', 'EUia5nUxTxF4Dk6lFKAhzw', 'Yes');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('PXDf39boh1/M1puywMKzQA', '', 'oazmbLEKfQnL2JG3BIdKCw', 'No');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('PXDf39boh1/M1puywMKzQA', '', 'vuPDADbidO8s3Pz8tQQgOg', 'Yes');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('PXDf39boh1/M1puywMKzQA', '', 'inldeS4jLxqTEN+DCSQxkw', 'Yes');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('vpqYyRrdQ3N+G3e4+uHC8A', '', 'WgzsCn5cDqKKnMk9Csg2pA', 'No');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('vpqYyRrdQ3N+G3e4+uHC8A', '', 'qJolMkykDZYb6AsnSKlSnA', 'Yes');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('vpqYyRrdQ3N+G3e4+uHC8A', '', 'fvgYioKmOa/geDpL2Ykf0A', 'Yes');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('WgzsCn5cDqKKnMk9Csg2pA', '', 'AyOdYBS1DAAH1MRUAcARWQ', 'No');
INSERT INTO table_fields_list_source_select(Field_ID, Auto_ID, Select_Field_ID, Display) VALUES('WgzsCn5cDqKKnMk9Csg2pA', '', 'nrw8tW+WOhOszXfTeKq8BQ', 'Yes');


INSERT INTO table_fields_list_source_where(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('zK/E2q50nwkQTjHs1lKFUg', '0', '', '', '');
INSERT INTO table_fields_list_source_where(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('plg/JjZ1uJoTC1FjET0UPw', '0', '', '', '');
INSERT INTO table_fields_list_source_where(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('Z807onsHvPKQoF78JL8bvQ', '0', '', '', '');
INSERT INTO table_fields_list_source_where(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('aGaiXEwxI90OP0GlNQ9q7Q', '0', '', '', '');
INSERT INTO table_fields_list_source_where(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('lBHRQiaExAnyG4QvBWw+ag', '0', '', '', '');
INSERT INTO table_fields_list_source_where(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('c+H+E2JopFs1rad4x0k8XQ', '0', '', '', '');
INSERT INTO table_fields_list_source_where(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('bAeRnrJfHPi6J0lXABLR0Q', '0', '', '', '');
INSERT INTO table_fields_list_source_where(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('h/U9+hZsEBjlMcS9BZMz/g', '0', '', '', '');
INSERT INTO table_fields_list_source_where(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('wP6t0biq4Ar1WuyTgoMmag', '0', '', '', '');
INSERT INTO table_fields_list_source_where(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('9d9HIwRkFtRCHyUx4v4HpA', '0', '', '', '');
INSERT INTO table_fields_list_source_where(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('PXDf39boh1/M1puywMKzQA', '0', '', '', '');
INSERT INTO table_fields_list_source_where(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('vpqYyRrdQ3N+G3e4+uHC8A', '0', '', '', '');
INSERT INTO table_fields_list_source_where(Field_ID, Where_Field_ID, Where_Field_Operand, Where_Field_Value, Where_Field_Connector) VALUES('WgzsCn5cDqKKnMk9Csg2pA', '0', '', '', '');


INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('LmGrPNsGpHCLJI7aG9N0Pw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Registrar/department/add_dept.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('LmGrPNsGpHCLJI7aG9N0Pw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Registrar/department/edit_dept.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('LmGrPNsGpHCLJI7aG9N0Pw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'Registrar/department/detailview_dept.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('LmGrPNsGpHCLJI7aG9N0Pw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'Registrar/department/listview_dept.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('LmGrPNsGpHCLJI7aG9N0Pw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Registrar/department/delete_dept.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('LmGrPNsGpHCLJI7aG9N0Pw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'Registrar/department/csv_dept.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('LmGrPNsGpHCLJI7aG9N0Pw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'Registrar/department/reporter_dept.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('LmGrPNsGpHCLJI7aG9N0Pw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'Registrar/department/reporter_result_dept.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('LmGrPNsGpHCLJI7aG9N0Pw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'Registrar/department/reporter_pdfresult_dept.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('aE+drjzmfNJY5/cbswVFoA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Clinic/emergency_case/add_emergencycase.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('aE+drjzmfNJY5/cbswVFoA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Clinic/emergency_case/edit_emergencycase.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('aE+drjzmfNJY5/cbswVFoA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'Clinic/emergency_case/detailview_emergencycase.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('aE+drjzmfNJY5/cbswVFoA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'Clinic/emergency_case/listview_emergencycase.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('aE+drjzmfNJY5/cbswVFoA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Clinic/emergency_case/delete_emergencycase.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('aE+drjzmfNJY5/cbswVFoA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'Clinic/emergency_case/csv_emergencycase.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('aE+drjzmfNJY5/cbswVFoA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'Clinic/emergency_case/reporter_emergencycase.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('aE+drjzmfNJY5/cbswVFoA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'Clinic/emergency_case/reporter_result_emergencycase.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('aE+drjzmfNJY5/cbswVFoA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'Clinic/emergency_case/reporter_pdfresult_emergencycase.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('IL+HMH/sR5jjGD8n54zGfw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Registrar/employee/add_employee.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('IL+HMH/sR5jjGD8n54zGfw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Registrar/employee/edit_employee.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('IL+HMH/sR5jjGD8n54zGfw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'Registrar/employee/detailview_employee.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('IL+HMH/sR5jjGD8n54zGfw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'Registrar/employee/listview_employee.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('IL+HMH/sR5jjGD8n54zGfw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Registrar/employee/delete_employee.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('IL+HMH/sR5jjGD8n54zGfw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'Registrar/employee/csv_employee.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('IL+HMH/sR5jjGD8n54zGfw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'Registrar/employee/reporter_employee.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('IL+HMH/sR5jjGD8n54zGfw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'Registrar/employee/reporter_result_employee.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('IL+HMH/sR5jjGD8n54zGfw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'Registrar/employee/reporter_pdfresult_employee.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('DgmSe6zHYab4KAIz1Rc8YQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Clinic/hospital/add_hospital.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('DgmSe6zHYab4KAIz1Rc8YQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Clinic/hospital/edit_hospital.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('DgmSe6zHYab4KAIz1Rc8YQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'Clinic/hospital/detailview_hospital.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('DgmSe6zHYab4KAIz1Rc8YQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'Clinic/hospital/listview_hospital.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('DgmSe6zHYab4KAIz1Rc8YQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Clinic/hospital/delete_hospital.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('DgmSe6zHYab4KAIz1Rc8YQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'Clinic/hospital/csv_hospital.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('DgmSe6zHYab4KAIz1Rc8YQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'Clinic/hospital/reporter_hospital.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('DgmSe6zHYab4KAIz1Rc8YQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'Clinic/hospital/reporter_result_hospital.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('DgmSe6zHYab4KAIz1Rc8YQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'Clinic/hospital/reporter_pdfresult_hospital.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rhBEa49XAO93s7hTJOJNCw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Clinic/log_info/add_log_info.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rhBEa49XAO93s7hTJOJNCw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Clinic/log_info/edit_log_info.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rhBEa49XAO93s7hTJOJNCw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'Clinic/log_info/detailview_log_info.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rhBEa49XAO93s7hTJOJNCw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'Clinic/log_info/listview_log_info.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rhBEa49XAO93s7hTJOJNCw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Clinic/log_info/delete_log_info.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rhBEa49XAO93s7hTJOJNCw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'Clinic/log_info/csv_log_info.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rhBEa49XAO93s7hTJOJNCw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'Clinic/log_info/reporter_log_info.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rhBEa49XAO93s7hTJOJNCw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'Clinic/log_info/reporter_result_log_info.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rhBEa49XAO93s7hTJOJNCw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'Clinic/log_info/reporter_pdfresult_log_info.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('NGLNfaSW2stq0BSXFp95kw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Clinic/medicine/add_medicine.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('NGLNfaSW2stq0BSXFp95kw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Clinic/medicine/edit_medicine.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('NGLNfaSW2stq0BSXFp95kw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'Clinic/medicine/detailview_medicine.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('NGLNfaSW2stq0BSXFp95kw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'Clinic/medicine/listview_medicine.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('NGLNfaSW2stq0BSXFp95kw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Clinic/medicine/delete_medicine.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('NGLNfaSW2stq0BSXFp95kw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'Clinic/medicine/csv_medicine.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('NGLNfaSW2stq0BSXFp95kw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'Clinic/medicine/reporter_medicine.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('NGLNfaSW2stq0BSXFp95kw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'Clinic/medicine/reporter_result_medicine.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('NGLNfaSW2stq0BSXFp95kw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'Clinic/medicine/reporter_pdfresult_medicine.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rPmo16xPA0txCK/LM7MHpA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Registrar/employee_family/add_refempfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rPmo16xPA0txCK/LM7MHpA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Registrar/employee_family/edit_refempfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rPmo16xPA0txCK/LM7MHpA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'Registrar/employee_family/detailview_refempfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rPmo16xPA0txCK/LM7MHpA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'Registrar/employee_family/listview_refempfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rPmo16xPA0txCK/LM7MHpA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Registrar/employee_family/delete_refempfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rPmo16xPA0txCK/LM7MHpA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'Registrar/employee_family/csv_refempfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rPmo16xPA0txCK/LM7MHpA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'Registrar/employee_family/reporter_refempfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rPmo16xPA0txCK/LM7MHpA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'Registrar/employee_family/reporter_result_refempfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('rPmo16xPA0txCK/LM7MHpA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'Registrar/employee_family/reporter_pdfresult_refempfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('V6AY6uzDsLbzRyVP7Gl2NA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Registrar/student/add_refstudent.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('V6AY6uzDsLbzRyVP7Gl2NA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Registrar/student/edit_refstudent.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('V6AY6uzDsLbzRyVP7Gl2NA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'Registrar/student/detailview_refstudent.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('V6AY6uzDsLbzRyVP7Gl2NA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'Registrar/student/listview_refstudent.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('V6AY6uzDsLbzRyVP7Gl2NA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Registrar/student/delete_refstudent.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('V6AY6uzDsLbzRyVP7Gl2NA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'Registrar/student/csv_refstudent.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('V6AY6uzDsLbzRyVP7Gl2NA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'Registrar/student/reporter_refstudent.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('V6AY6uzDsLbzRyVP7Gl2NA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'Registrar/student/reporter_result_refstudent.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('V6AY6uzDsLbzRyVP7Gl2NA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'Registrar/student/reporter_pdfresult_refstudent.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('AC5efmEu35UQF1me3WmNJA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Registrar/clearance/add_refstudentclearance.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('AC5efmEu35UQF1me3WmNJA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Registrar/clearance/edit_refstudentclearance.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('AC5efmEu35UQF1me3WmNJA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'Registrar/clearance/detailview_refstudentclearance.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('AC5efmEu35UQF1me3WmNJA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'Registrar/clearance/listview_refstudentclearance.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('AC5efmEu35UQF1me3WmNJA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Registrar/clearance/delete_refstudentclearance.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('AC5efmEu35UQF1me3WmNJA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'Registrar/clearance/csv_refstudentclearance.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('AC5efmEu35UQF1me3WmNJA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'Registrar/clearance/reporter_refstudentclearance.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('AC5efmEu35UQF1me3WmNJA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'Registrar/clearance/reporter_result_refstudentclearance.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('AC5efmEu35UQF1me3WmNJA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'Registrar/clearance/reporter_pdfresult_refstudentclearance.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('QIS8isZZUPbxQxdyxEbTWg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Registrar/student_family/add_refstudentfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('QIS8isZZUPbxQxdyxEbTWg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Registrar/student_family/edit_refstudentfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('QIS8isZZUPbxQxdyxEbTWg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'Registrar/student_family/detailview_refstudentfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('QIS8isZZUPbxQxdyxEbTWg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'Registrar/student_family/listview_refstudentfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('QIS8isZZUPbxQxdyxEbTWg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Registrar/student_family/delete_refstudentfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('QIS8isZZUPbxQxdyxEbTWg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'Registrar/student_family/csv_refstudentfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('QIS8isZZUPbxQxdyxEbTWg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'Registrar/student_family/reporter_refstudentfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('QIS8isZZUPbxQxdyxEbTWg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'Registrar/student_family/reporter_result_refstudentfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('QIS8isZZUPbxQxdyxEbTWg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'Registrar/student_family/reporter_pdfresult_refstudentfamily.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('w8hKS8a239ni4Gcyhu6hKQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Registrar/subject_offering_detail/add_refsubjectofferingdtl.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('w8hKS8a239ni4Gcyhu6hKQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Registrar/subject_offering_detail/edit_refsubjectofferingdtl.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('w8hKS8a239ni4Gcyhu6hKQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'Registrar/subject_offering_detail/detailview_refsubjectofferingdtl.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('w8hKS8a239ni4Gcyhu6hKQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'Registrar/subject_offering_detail/listview_refsubjectofferingdtl.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('w8hKS8a239ni4Gcyhu6hKQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Registrar/subject_offering_detail/delete_refsubjectofferingdtl.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('w8hKS8a239ni4Gcyhu6hKQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'Registrar/subject_offering_detail/csv_refsubjectofferingdtl.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('w8hKS8a239ni4Gcyhu6hKQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'Registrar/subject_offering_detail/reporter_refsubjectofferingdtl.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('w8hKS8a239ni4Gcyhu6hKQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'Registrar/subject_offering_detail/reporter_result_refsubjectofferingdtl.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('w8hKS8a239ni4Gcyhu6hKQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'Registrar/subject_offering_detail/reporter_pdfresult_refsubjectofferingdtl.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('Isp6D19CVk2T8ycHg4Pdcg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Registrar/subject_offering_header/add_refsubjectofferinghdr.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('Isp6D19CVk2T8ycHg4Pdcg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Registrar/subject_offering_header/edit_refsubjectofferinghdr.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('Isp6D19CVk2T8ycHg4Pdcg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'Registrar/subject_offering_header/detailview_refsubjectofferinghdr.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('Isp6D19CVk2T8ycHg4Pdcg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'Registrar/subject_offering_header/listview_refsubjectofferinghdr.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('Isp6D19CVk2T8ycHg4Pdcg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Registrar/subject_offering_header/delete_refsubjectofferinghdr.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('Isp6D19CVk2T8ycHg4Pdcg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'Registrar/subject_offering_header/csv_refsubjectofferinghdr.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('Isp6D19CVk2T8ycHg4Pdcg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'Registrar/subject_offering_header/reporter_refsubjectofferinghdr.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('Isp6D19CVk2T8ycHg4Pdcg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'Registrar/subject_offering_header/reporter_result_refsubjectofferinghdr.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('Isp6D19CVk2T8ycHg4Pdcg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'Registrar/subject_offering_header/reporter_pdfresult_refsubjectofferinghdr.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('XaIiJ8T8K2YB7M+jcmp1Dw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Clinic/required_appointment/add_required_appointment.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('XaIiJ8T8K2YB7M+jcmp1Dw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Clinic/required_appointment/edit_required_appointment.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('XaIiJ8T8K2YB7M+jcmp1Dw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'Clinic/required_appointment/detailview_required_appointment.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('XaIiJ8T8K2YB7M+jcmp1Dw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'Clinic/required_appointment/listview_required_appointment.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('XaIiJ8T8K2YB7M+jcmp1Dw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Clinic/required_appointment/delete_required_appointment.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('XaIiJ8T8K2YB7M+jcmp1Dw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'Clinic/required_appointment/csv_required_appointment.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('XaIiJ8T8K2YB7M+jcmp1Dw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'Clinic/required_appointment/reporter_required_appointment.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('XaIiJ8T8K2YB7M+jcmp1Dw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'Clinic/required_appointment/reporter_result_required_appointment.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('XaIiJ8T8K2YB7M+jcmp1Dw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'Clinic/required_appointment/reporter_pdfresult_required_appointment.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('97ycq2Rrft3nzw9LCIi1pg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Registrar/subject/add_subject.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('97ycq2Rrft3nzw9LCIi1pg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Registrar/subject/edit_subject.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('97ycq2Rrft3nzw9LCIi1pg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'Registrar/subject/detailview_subject.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('97ycq2Rrft3nzw9LCIi1pg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'Registrar/subject/listview_subject.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('97ycq2Rrft3nzw9LCIi1pg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Registrar/subject/delete_subject.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('97ycq2Rrft3nzw9LCIi1pg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'Registrar/subject/csv_subject.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('97ycq2Rrft3nzw9LCIi1pg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'Registrar/subject/reporter_subject.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('97ycq2Rrft3nzw9LCIi1pg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'Registrar/subject/reporter_result_subject.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('97ycq2Rrft3nzw9LCIi1pg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'Registrar/subject/reporter_pdfresult_subject.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('mQb/GgbPc9po2f92GrFEmw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Registrar/term/add_term.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('mQb/GgbPc9po2f92GrFEmw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Registrar/term/edit_term.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('mQb/GgbPc9po2f92GrFEmw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'Registrar/term/detailview_term.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('mQb/GgbPc9po2f92GrFEmw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'Registrar/term/listview_term.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('mQb/GgbPc9po2f92GrFEmw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Registrar/term/delete_term.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('mQb/GgbPc9po2f92GrFEmw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'Registrar/term/csv_term.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('mQb/GgbPc9po2f92GrFEmw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'Registrar/term/reporter_term.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('mQb/GgbPc9po2f92GrFEmw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'Registrar/term/reporter_result_term.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('mQb/GgbPc9po2f92GrFEmw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'Registrar/term/reporter_pdfresult_term.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('57+Ht04YCmxFy1c5NpkiIg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Registrar/student_schedule/add_xrefstudentschedule.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('57+Ht04YCmxFy1c5NpkiIg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Registrar/student_schedule/edit_xrefstudentschedule.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('57+Ht04YCmxFy1c5NpkiIg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'Registrar/student_schedule/detailview_xrefstudentschedule.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('57+Ht04YCmxFy1c5NpkiIg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'Registrar/student_schedule/listview_xrefstudentschedule.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('57+Ht04YCmxFy1c5NpkiIg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Registrar/student_schedule/delete_xrefstudentschedule.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('57+Ht04YCmxFy1c5NpkiIg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'Registrar/student_schedule/csv_xrefstudentschedule.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('57+Ht04YCmxFy1c5NpkiIg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'Registrar/student_schedule/reporter_xrefstudentschedule.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('57+Ht04YCmxFy1c5NpkiIg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'Registrar/student_schedule/reporter_result_xrefstudentschedule.php');
INSERT INTO table_pages(Table_ID, Page_ID, Path_Filename) VALUES('57+Ht04YCmxFy1c5NpkiIg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'Registrar/student_schedule/reporter_pdfresult_xrefstudentschedule.php');


INSERT INTO table_relations(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('jv628HbmSg7YgzXPZqHsKA', 'rwfL+ImPqfvoAakWlIom4Q', 'ONE-to-MANY', 'KAcoLAxUjyehPmfmR/0puA', 'zK/E2q50nwkQTjHs1lKFUg', 'employee=>refempfamily', '');
INSERT INTO table_relations(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('wa8M5iMmfY6PAidmNNsZNQ', 'rwfL+ImPqfvoAakWlIom4Q', 'ONE-to-ONE', 'KAcoLAxUjyehPmfmR/0puA', 'zK/E2q50nwkQTjHs1lKFUg', 'employee=>refempfamily', 'emp_id');
INSERT INTO table_relations(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('R0Cf1r4piNW8bghr2y45Ow', 'rwfL+ImPqfvoAakWlIom4Q', 'ONE-to-MANY', 'gveD9EiEAaVsd7+qJYwuDg', 'plg/JjZ1uJoTC1FjET0UPw', 'refstudent=>refstudentfamily', '');
INSERT INTO table_relations(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('ewfCBXt+MRmMPYHLzGZUnw', 'rwfL+ImPqfvoAakWlIom4Q', 'ONE-to-ONE', 'gveD9EiEAaVsd7+qJYwuDg', 'plg/JjZ1uJoTC1FjET0UPw', 'refstudent=>refstudentfamily', 'student_id');
INSERT INTO table_relations(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('xti4CppqbedkzfV6O8g48g', 'rwfL+ImPqfvoAakWlIom4Q', 'ONE-to-ONE', 'b6n44oJIRMlq79w+qAZS/g', 'Z807onsHvPKQoF78JL8bvQ', 'hospital=>emergencycase', 'hospital_name');
INSERT INTO table_relations(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('BqBzP4uT8SmgjZq+MxRGbw', 'rwfL+ImPqfvoAakWlIom4Q', 'ONE-to-ONE', 'gveD9EiEAaVsd7+qJYwuDg', 'aGaiXEwxI90OP0GlNQ9q7Q', 'refstudent=>log_info', 'student_id');
INSERT INTO table_relations(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('sxrjyd7W3i1pk7X1ft6J7g', 'rwfL+ImPqfvoAakWlIom4Q', 'ONE-to-ONE', 'KAcoLAxUjyehPmfmR/0puA', 'lBHRQiaExAnyG4QvBWw+ag', 'employee=>log_info', 'emp_id');
INSERT INTO table_relations(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('7LFNtQjJkpg7Fe1Lx4QkOw', 'rwfL+ImPqfvoAakWlIom4Q', 'ONE-to-ONE', 'tpBExgMkWF4FPBhLMAWLkg', 'c+H+E2JopFs1rad4x0k8XQ', 'medicine=>log_info', 'medicine_name');
INSERT INTO table_relations(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('K2I90TphAunBhVA/fr5k4Q', 'rwfL+ImPqfvoAakWlIom4Q', 'ONE-to-ONE', 'oazmbLEKfQnL2JG3BIdKCw', 'bAeRnrJfHPi6J0lXABLR0Q', 'term=>refstudentclearance', 'school_year, term');
INSERT INTO table_relations(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('eGwp97owIMs4p2ajOHrawg', 'rwfL+ImPqfvoAakWlIom4Q', 'ONE-to-ONE', 'gveD9EiEAaVsd7+qJYwuDg', 'h/U9+hZsEBjlMcS9BZMz/g', 'refstudent=>refstudentclearance', 'student_id');
INSERT INTO table_relations(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('QQZSveqhwdxklQsUrrYOUw', 'rwfL+ImPqfvoAakWlIom4Q', 'ONE-to-ONE', 'oazmbLEKfQnL2JG3BIdKCw', 'wP6t0biq4Ar1WuyTgoMmag', 'term=>subject', 'school_year, term');
INSERT INTO table_relations(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('Gan55XdbYZAs1s0EMw8b5w', 'rwfL+ImPqfvoAakWlIom4Q', 'ONE-to-ONE', 'nMeMiS/yRCx/Om2RrMjhcg', '9d9HIwRkFtRCHyUx4v4HpA', 'dept=>subject', 'dept_code');
INSERT INTO table_relations(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('kVr29OTGStMRyfKrH7TQIw', 'rwfL+ImPqfvoAakWlIom4Q', 'ONE-to-ONE', 'oazmbLEKfQnL2JG3BIdKCw', 'PXDf39boh1/M1puywMKzQA', 'term=>refsubjectofferinghdr', 'school_year, term');
INSERT INTO table_relations(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('zM9HFiRVsi7a30du5tOFWg', 'rwfL+ImPqfvoAakWlIom4Q', 'ONE-to-ONE', 'WgzsCn5cDqKKnMk9Csg2pA', 'vpqYyRrdQ3N+G3e4+uHC8A', 'refsubjectofferingdtl=>required_appointment', 'time_start, time_end');
INSERT INTO table_relations(Relation_ID, Project_ID, Relation, Parent_Field_ID, Child_Field_ID, Label, Child_Field_Subtext) VALUES('N0FtTB8UgDOxzrLDNC/b/w', 'rwfL+ImPqfvoAakWlIom4Q', 'ONE-to-ONE', 'AyOdYBS1DAAH1MRUAcARWQ', 'WgzsCn5cDqKKnMk9Csg2pA', 'refsubjectofferinghdr=>refsubjectofferingdtl', 'subject_code');


INSERT INTO table_fields_predefined_list(List_ID, Project_ID, List_Name, Remarks) VALUES('Iyx/DynpNsfQvCDvD6TIeg', 'rwfL+ImPqfvoAakWlIom4Q', 'Male/Female', 'Male/Female gender list');
INSERT INTO table_fields_predefined_list(List_ID, Project_ID, List_Name, Remarks) VALUES('s3bMwHqgEhesLFx9rR7ILQ', 'rwfL+ImPqfvoAakWlIom4Q', 'On/Off', 'On/Off status list');
INSERT INTO table_fields_predefined_list(List_ID, Project_ID, List_Name, Remarks) VALUES('s/t5t/kamwQdS8DPwA9T/g', 'rwfL+ImPqfvoAakWlIom4Q', 'TRUE/FALSE', 'TRUE/FALSE list');
INSERT INTO table_fields_predefined_list(List_ID, Project_ID, List_Name, Remarks) VALUES('9SBnPXxtvE26wVf5P2xT+w', 'rwfL+ImPqfvoAakWlIom4Q', 'M/F', 'Single character male/female gender list');
INSERT INTO table_fields_predefined_list(List_ID, Project_ID, List_Name, Remarks) VALUES('K24eH5xUcD5LiRRoaohCPQ', 'rwfL+ImPqfvoAakWlIom4Q', 'Yes/No', 'Yes/No list');
INSERT INTO table_fields_predefined_list(List_ID, Project_ID, List_Name, Remarks) VALUES('FXW5fP4Iirn3IGUw39IfwQ', 'rwfL+ImPqfvoAakWlIom4Q', 'Y/N', 'Single character yes/no list');
INSERT INTO table_fields_predefined_list(List_ID, Project_ID, List_Name, Remarks) VALUES('IXKHBVOgXGy32kgjw2aepg', 'rwfL+ImPqfvoAakWlIom4Q', 'Relationship', 'Relationship');


INSERT INTO table_fields_predefined_list_items(List_ID, Number, List_Item) VALUES('Iyx/DynpNsfQvCDvD6TIeg', '1', 'Male');
INSERT INTO table_fields_predefined_list_items(List_ID, Number, List_Item) VALUES('Iyx/DynpNsfQvCDvD6TIeg', '2', 'Female');
INSERT INTO table_fields_predefined_list_items(List_ID, Number, List_Item) VALUES('s3bMwHqgEhesLFx9rR7ILQ', '1', 'On');
INSERT INTO table_fields_predefined_list_items(List_ID, Number, List_Item) VALUES('s3bMwHqgEhesLFx9rR7ILQ', '2', 'Off');
INSERT INTO table_fields_predefined_list_items(List_ID, Number, List_Item) VALUES('s/t5t/kamwQdS8DPwA9T/g', '1', 'TRUE');
INSERT INTO table_fields_predefined_list_items(List_ID, Number, List_Item) VALUES('s/t5t/kamwQdS8DPwA9T/g', '2', 'FALSE');
INSERT INTO table_fields_predefined_list_items(List_ID, Number, List_Item) VALUES('9SBnPXxtvE26wVf5P2xT+w', '1', 'M');
INSERT INTO table_fields_predefined_list_items(List_ID, Number, List_Item) VALUES('9SBnPXxtvE26wVf5P2xT+w', '2', 'F');
INSERT INTO table_fields_predefined_list_items(List_ID, Number, List_Item) VALUES('K24eH5xUcD5LiRRoaohCPQ', '1', 'Yes');
INSERT INTO table_fields_predefined_list_items(List_ID, Number, List_Item) VALUES('K24eH5xUcD5LiRRoaohCPQ', '2', 'No');
INSERT INTO table_fields_predefined_list_items(List_ID, Number, List_Item) VALUES('FXW5fP4Iirn3IGUw39IfwQ', '1', 'Y');
INSERT INTO table_fields_predefined_list_items(List_ID, Number, List_Item) VALUES('FXW5fP4Iirn3IGUw39IfwQ', '2', 'N');
INSERT INTO table_fields_predefined_list_items(List_ID, Number, List_Item) VALUES('IXKHBVOgXGy32kgjw2aepg', '1', 'Mother');
INSERT INTO table_fields_predefined_list_items(List_ID, Number, List_Item) VALUES('IXKHBVOgXGy32kgjw2aepg', '2', 'Father ');
INSERT INTO table_fields_predefined_list_items(List_ID, Number, List_Item) VALUES('IXKHBVOgXGy32kgjw2aepg', '3', 'Guardian');


