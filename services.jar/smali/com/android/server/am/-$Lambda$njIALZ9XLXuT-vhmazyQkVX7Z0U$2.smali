.class final synthetic Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->lambda$-com_android_server_am_ActivityManagerService_186066(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U$2;->$m$0()V

    return-void
.end method
