.class public Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# instance fields
.field private s:Landroid/content/Context;

.field private t:Landroid/content/BroadcastReceiver;

.field private u:Ljava/lang/String;

.field private v:Lcom/samsung/context/sdk/samsunganalytics/a/a;

.field private w:Z

.field private x:Z

.field private y:Lcom/sec/spp/push/dlc/api/IDlcService;

.field private z:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "com.sec.spp.push"

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->c:Ljava/lang/String;

    const-string/jumbo v0, "com.sec.spp.push.dlc.writer.WriterService"

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->t:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .registers 2

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->t:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Lcom/sec/spp/push/dlc/api/IDlcService;)Lcom/sec/spp/push/dlc/api/IDlcService;
    .registers 2

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->y:Lcom/sec/spp/push/dlc/api/IDlcService;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    iget-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->w:Z

    if-nez v1, :cond_25

    :goto_4
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->c:Ljava/lang/String;

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->z:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->w:Z

    const-string/jumbo v1, "DLCBinder"

    const-string/jumbo v2, "bind"

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_29

    :goto_24
    return-void

    :cond_25
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->e()V

    goto :goto_4

    :catch_29
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_24
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->s:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->x:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Lcom/samsung/context/sdk/samsunganalytics/a/a;
    .registers 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->v:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 4

    iget-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->w:Z

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    const-string/jumbo v1, "DLCBinder"

    const-string/jumbo v2, "unbind"

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->z:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->w:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_4

    :catch_19
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_4
.end method


# virtual methods
.method public d()Lcom/sec/spp/push/dlc/api/IDlcService;
    .registers 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->y:Lcom/sec/spp/push/dlc/api/IDlcService;

    return-object v0
.end method
