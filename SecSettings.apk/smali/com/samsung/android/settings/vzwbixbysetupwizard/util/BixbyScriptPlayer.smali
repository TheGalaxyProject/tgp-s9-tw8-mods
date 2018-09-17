.class public Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;
.super Ljava/lang/Object;
.source "BixbyScriptPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer$1;,
        Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer$2;
    }
.end annotation


# instance fields
.field private mIBixbyScriptPlayerStates:Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;

.field private mRegisteredContext:Landroid/content/Context;

.field private final mScriptServiceConnection:Landroid/content/ServiceConnection;

.field mSuwScriptPlayerCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

.field private mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;)Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mIBixbyScriptPlayerStates:Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer$1;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mScriptServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer$2;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mSuwScriptPlayerCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mRegisteredContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public buildBixbyScriptPlayer()V
    .registers 8

    const/4 v6, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.suwscriptplayer.intent.action.SCRIPT_PLAYER_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.sec.android.app.suwscriptplayer"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mRegisteredContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mScriptServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_27

    :try_start_1a
    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.app.suwscriptplayer"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_27} :catch_42

    :cond_27
    :goto_27
    const-string/jumbo v3, "SetupWizardWifiScreen -> BixbyScriptPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Script player bindService : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_42
    move-exception v1

    const-string/jumbo v3, "SetupWizardWifiScreen -> BixbyScriptPlayer"

    const-string/jumbo v4, " Script player service bot found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mRegisteredContext:Landroid/content/Context;

    const-string/jumbo v4, "SuwScriptPlayer is not installed"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mIBixbyScriptPlayerStates:Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;

    invoke-interface {v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;->onScriptPlayError()V

    goto :goto_27
.end method

.method public declared-synchronized clean()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mRegisteredContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mScriptServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mRegisteredContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10
    .catchall {:try_start_1 .. :try_end_e} :catchall_1c

    :goto_e
    monitor-exit p0

    return-void

    :catch_10
    move-exception v0

    :try_start_11
    const-string/jumbo v1, "SetupWizardWifiScreen -> BixbyScriptPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1c

    goto :goto_e

    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isPlaying()Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    invoke-interface {v1}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->isPlaying()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    return v1

    :catch_b
    move-exception v0

    const-string/jumbo v1, "SetupWizardWifiScreen -> BixbyScriptPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method public setBixbyScriptPlayerListener(Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mIBixbyScriptPlayerStates:Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;

    return-void
.end method

.method public declared-synchronized startScriptPlay(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mSuwScriptPlayerCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    invoke-interface {v1, p1, v2}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->PlayScript(Ljava/lang/String;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_c} :catch_e
    .catchall {:try_start_1 .. :try_end_c} :catchall_15

    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    :catch_e
    move-exception v0

    :try_start_f
    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mIBixbyScriptPlayerStates:Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;

    invoke-interface {v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;->onScriptPlayError()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    goto :goto_c

    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopScriptPlay()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->mSuwScriptPlayerService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    invoke-interface {v1}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->StopScript()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c
    .catchall {:try_start_1 .. :try_end_a} :catchall_18

    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    :catch_c
    move-exception v0

    :try_start_d
    const-string/jumbo v1, "SetupWizardWifiScreen -> BixbyScriptPlayer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_18

    goto :goto_a

    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method
