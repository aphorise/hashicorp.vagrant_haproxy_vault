VAULT_AUDIT_PATH='vaudit.log' ;
vault audit enable file file_path=${VAULT_AUDIT_PATH} > /dev/null ;
if (($? == 0)) ; then printf "VAULT: Audit logs enabled at: ${VAULT_AUDIT_PATH}\n" ;
else printf 'VAULT ERROR: NOT ABLE TO ENABLE AUDITS.\n' ; fi ;

vault secrets enable -version=2 kv > /dev/null ;
if (($? == 0)) ; then printf "VAULT: Enabled KV secrets engine at: kv/\n" ;
else printf 'VAULT ERROR: NOT ABLE TO ENABLE KV secrets engine.\n' ; fi ;
