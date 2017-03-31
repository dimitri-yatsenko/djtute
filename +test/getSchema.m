function obj = getSchema
persistent schemaObject
if isempty(schemaObject)
    schemaObject = dj.Schema(dj.conn, 'test', 'dimitri_test');
end
obj = schemaObject;
end
