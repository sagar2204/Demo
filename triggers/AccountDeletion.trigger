trigger AccountDeletion  on Account (before delete)
 {
for(Account a:[Select id from Account where id in(Select AccountId from opportunity) And id in:Trigger.old])
    {
      trigger.oldmap.get(a.id).adderror('You cannot delete this account because this account has related opportunities');
    }
}