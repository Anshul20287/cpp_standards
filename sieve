const int MAXN=200005;
const long long INF = 1e18;

int spf[MAXN];
 
void sieve(){
    for(int i=1;i<MAXN;i++) spf[i]=i;
    for(int i=2;i*i<MAXN;i++) {
        if(spf[i]==i){
            for(int j=i*i;j<MAXN;j+=i){
                if(spf[j]==j) spf[j]=i;
            }
        }
    }
}
