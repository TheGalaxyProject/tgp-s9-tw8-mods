.class public Lcom/samsung/android/settings/qstile/SecAccountTiles;
.super Landroid/service/quicksettings/TileService;
.source "SecAccountTiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/qstile/SecAccountTiles$1;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field mContext:Landroid/content/Context;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field private mSyncOn:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/qstile/SecAccountTiles;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/qstile/SecAccountTiles;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showConfirmPopup(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->updateState()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/qstile/SecAccountTiles$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles$1;-><init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    return-void
.end method

.method private hasUserRestriction()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "no_modify_accounts"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    const-string/jumbo v1, "SecAccountTiles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasUserRestriction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isBlockedEdmSettingsChange()Z
    .registers 14

    const/4 v12, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v9, "false"

    aput-object v9, v7, v10

    iget-object v9, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v11, "isSettingsChangesAllowed"

    invoke-static {v9, v10, v11, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v9, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "content://com.sec.knox.provider/RoamingPolicy"

    const-string/jumbo v11, "isRoamingSyncEnabled"

    invoke-static {v9, v10, v11, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eq v0, v12, :cond_7b

    if-nez v0, :cond_7b

    const/4 v4, 0x1

    :goto_32
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v9

    if-eqz v9, :cond_5b

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    const-string/jumbo v9, "gsm.operator.isroaming"

    const-string/jumbo v10, "false"

    invoke-static {v5, v9, v10}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7d

    const-string/jumbo v9, "true"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_5b
    :goto_5b
    if-eq v1, v12, :cond_7f

    if-nez v1, :cond_7f

    :cond_5f
    const/4 v6, 0x1

    :goto_60
    const-string/jumbo v9, "SecAccountTiles"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isBlockedEdmSettingsChange: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_7b
    const/4 v4, 0x0

    goto :goto_32

    :cond_7d
    const/4 v2, 0x0

    goto :goto_5b

    :cond_7f
    if-eqz v4, :cond_83

    if-nez v2, :cond_5f

    :cond_83
    const/4 v6, 0x0

    goto :goto_60
.end method

.method private showConfirmPopup(Z)V
    .registers 6

    const-string/jumbo v1, "SecAccountTiles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showConfirmPopup/state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/mSyncOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mSyncOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_38
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_87

    const v1, 0x7f1206fc

    :goto_4c
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz p1, :cond_8b

    const v1, 0x7f1206fb

    :goto_55
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/qstile/SecAccountTiles$3;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/qstile/SecAccountTiles$3;-><init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;Z)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/qstile/SecAccountTiles$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles$4;-><init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showDialog(Landroid/app/Dialog;)V

    return-void

    :cond_87
    const v1, 0x7f1206fa

    goto :goto_4c

    :cond_8b
    const v1, 0x7f1206f9

    goto :goto_55
.end method

.method private showItPolicyToast()V
    .registers 8

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const v5, 0x7f120c78

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f12151d

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_26
    return-void
.end method

.method private updateState()V
    .registers 6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mSyncOn:Z

    const-string/jumbo v2, "SecAccountTiles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mSyncOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    if-eqz v1, :cond_51

    const v2, 0x7f0805a7

    invoke-static {p0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    const v2, 0x7f120c78

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->hasUserRestriction()Z

    move-result v2

    if-eqz v2, :cond_52

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    :goto_4e
    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_51
    return-void

    :cond_52
    iget-boolean v2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mSyncOn:Z

    if-eqz v2, :cond_5b

    const/4 v2, 0x2

    :goto_57
    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    goto :goto_4e

    :cond_5b
    const/4 v2, 0x1

    goto :goto_57
.end method


# virtual methods
.method public onClick()V
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v1, "SecAccountTiles"

    const-string/jumbo v2, "onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->hasUserRestriction()Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->isBlockedEdmSettingsChange()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showItPolicyToast()V

    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_function_val"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_42

    const/4 v0, 0x1

    :goto_29
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_44

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->semIsToggleButtonChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_44

    new-instance v1, Lcom/samsung/android/settings/qstile/SecAccountTiles$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles$2;-><init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->unlockAndRun(Ljava/lang/Runnable;)V

    goto :goto_1a

    :cond_42
    const/4 v0, 0x0

    goto :goto_29

    :cond_44
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showConfirmPopup(Z)V

    goto :goto_1a
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "SecAccountTiles"

    const-string/jumbo v1, "onDestroy(): dismiss the dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_24
    return-void
.end method

.method public onStartListening()V
    .registers 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->updateState()V

    return-void
.end method

.method public onStopListening()V
    .registers 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    return-void
.end method

.method public onTileAdded()V
    .registers 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    return-void
.end method

.method public onTileRemoved()V
    .registers 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    return-void
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .registers 8

    const v6, 0x7f0a001f

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->hasUserRestriction()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    return-object v2

    :cond_b
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0250

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_42

    const v2, 0x7f1206fb

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_2b
    iget-object v2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "qs_detail_content_secondary_text_color"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const/high16 v5, -0x1000000

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-object v1

    :cond_42
    const v2, 0x7f1206f9

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2b
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles;->mContext:Landroid/content/Context;

    const v1, 0x7f1215ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->hasUserRestriction()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .registers 5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    const-string/jumbo v1, "SecAccountTiles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semIsToggleButtonChecked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public semIsToggleButtonExists()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .registers 6

    const-string/jumbo v1, "SecAccountTiles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semSetToggleButtonChecked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->isBlockedEdmSettingsChange()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->semIsToggleButtonChecked()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->semFireToggleStateChanged(ZZ)V

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->showItPolicyToast()V

    :goto_2b
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->semUpdateDetailView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->updateState()V

    return-void

    :cond_32
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.AUTO_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2b
.end method
