.class final synthetic Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/server/virtualspace/VSScreen;

    invoke-virtual {v0}, Lcom/samsung/android/server/virtualspace/VSScreen;->lambda$-com_samsung_android_server_virtualspace_VSScreen_24341()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/virtualspace/-$Lambda$H5v65LbBsFotwTQ6cbCKu8MWcbg$1;->$m$0()V

    return-void
.end method
