.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiUserManager"
.end annotation


# instance fields
.field private final DELAY_TIME_FOR_BOOTINIT:I

.field private final DELAY_TIME_FOR_USERINIT:I

.field private final multiUserfilter:Landroid/content/IntentFilter;

.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->DELAY_TIME_FOR_BOOTINIT:I

    const v0, 0xea60

    iput v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->DELAY_TIME_FOR_USERINIT:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->multiUserfilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initMultiUser(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->multiUserfilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->multiUserfilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->multiUserfilter:Landroid/content/IntentFilter;

    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initInstalledPackages(Landroid/os/UserHandle;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initInstalledPackages(Landroid/os/UserHandle;I)V

    return-void
.end method

.method private initInstalledPackages(Landroid/os/UserHandle;I)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initInstalledPackagesAsUser(II)V

    return-void
.end method

.method private removeInstalledPackages(Landroid/os/UserHandle;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->removeInstalledPackageAsUser(I)V

    return-void
.end method


# virtual methods
.method public initInstalledPackagesAsUser(II)V
    .registers 9

    new-instance v0, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Z)V

    new-instance v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$1;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;I)V

    int-to-long v4, p2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    return-void
.end method

.method public initMultiUser(Landroid/content/Context;)V
    .registers 10

    const-string/jumbo v6, "user"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    :try_start_1e
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initInstalledPackages(Landroid/os/UserHandle;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_26

    goto :goto_12

    :catch_26
    move-exception v0

    const-string/jumbo v6, "AlarmManagerEXT"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_32
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    return-void

    :cond_19
    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->removeInstalledPackages(Landroid/os/UserHandle;)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string/jumbo v2, "android.intent.extra.USER"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    return-void

    :cond_40
    const-string/jumbo v2, "android.intent.extra.USER"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    const v2, 0xea60

    invoke-direct {p0, v0, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->initInstalledPackages(Landroid/os/UserHandle;I)V

    goto :goto_28
.end method

.method public removeInstalledPackageAsUser(I)V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Z)V

    new-instance v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager$2;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    return-void
.end method
