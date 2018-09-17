.class public Lcom/android/systemui/util/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/ShortcutManager$1;,
        Lcom/android/systemui/util/ShortcutManager$2;,
        Lcom/android/systemui/util/ShortcutManager$3;,
        Lcom/android/systemui/util/ShortcutManager$4;,
        Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;,
        Lcom/android/systemui/util/ShortcutManager$ShortcutData;
    }
.end annotation


# static fields
.field public static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

.field private static final SAMSUNG_PHONE_PACKAGES:[Ljava/lang/String;

.field public static final SECURE_CAMERA_INTENT:Landroid/content/Intent;


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIconSize:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPermDisabled:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPM:Landroid/content/pm/PackageManager;

.field mSb:Ljava/lang/StringBuilder;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mShortcutVisibleForMDM:Z

.field private mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/util/ShortcutManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/util/ShortcutManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/util/ShortcutManager;->mIsPermDisabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/util/ShortcutManager;)Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/util/ShortcutManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcutVisibleForMDM:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/util/ShortcutManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/util/ShortcutManager;->mIsPermDisabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/util/ShortcutManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcutVisibleForMDM:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/util/ShortcutManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->getShortcutIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/util/ShortcutManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/util/ShortcutManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/util/ShortcutManager;->handleUpdateShortcuts()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/util/ShortcutManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->resetShortcut(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/util/ShortcutManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->sendUpdateIconOnlyToCallback(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/util/ShortcutManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->sendUpdateShortcutViewToCallback(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/util/ShortcutManager;ILandroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/ShortcutManager;->updateShortcut(ILandroid/content/ComponentName;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.contacts"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.contacts"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.samsung.android.contacts"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/util/ShortcutManager;->SAMSUNG_PHONE_PACKAGES:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/Rune;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {}, Lcom/android/systemui/Rune;->getClockPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.samsung.android.game.gamehome"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.sec.android.widgetapp.SPlannerAppWidget"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/util/ShortcutManager;->SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.app.camera"

    const-string/jumbo v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/ShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.app.camera"

    const-string/jumbo v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/ShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 20

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/util/ShortcutManager$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/util/ShortcutManager$1;-><init>(Lcom/android/systemui/util/ShortcutManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v2, Lcom/android/systemui/util/ShortcutManager$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/util/ShortcutManager$2;-><init>(Lcom/android/systemui/util/ShortcutManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v2, Lcom/android/systemui/util/ShortcutManager$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/util/ShortcutManager$3;-><init>(Lcom/android/systemui/util/ShortcutManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/systemui/util/ShortcutManager$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/util/ShortcutManager$4;-><init>(Lcom/android/systemui/util/ShortcutManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/util/ShortcutManager;->mIconSize:I

    const-string/jumbo v2, "SEP"

    sget-object v3, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_179

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isShortcutsVisibleForMDM()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/util/ShortcutManager;->mShortcutVisibleForMDM:Z

    const/16 v16, 0x0

    :goto_ab
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ge v0, v2, :cond_bf

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    new-instance v3, Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/util/ShortcutManager$ShortcutData;-><init>(Lcom/android/systemui/util/ShortcutManager$ShortcutData;)V

    aput-object v3, v2, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_ab

    :cond_bf
    const/4 v2, 0x3

    new-array v0, v2, [Landroid/net/Uri;

    move-object/from16 v17, v0

    const-string/jumbo v2, "lock_application_shortcut"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v17, v3

    const-string/jumbo v2, "set_shortcuts_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v17, v3

    const-string/jumbo v2, "current_sec_appicon_theme_package"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v17, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/util/ShortcutManager;->mShortcutCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/util/ShortcutManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/util/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/util/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_APPLOCK:Z

    if-eqz v2, :cond_176

    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.applock.intent.action.SSECURE_UPDATE"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/util/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_176
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    :cond_179
    return-void
.end method

.method private drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;
    .registers 9

    const/4 v4, 0x0

    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2b

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_10
    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2

    :cond_2b
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_10
.end method

.method private enc(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_2a

    rem-int/lit8 v2, v0, 0x5

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_20
    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_2a
    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .registers 5

    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/android/systemui/util/ShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_1c
    return-object v2

    :cond_1d
    sget-object v2, Lcom/android/systemui/util/ShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_1c
.end method

.method public static getInstance()Lcom/android/systemui/util/ShortcutManager;
    .registers 1

    const-class v0, Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/ShortcutManager;

    return-object v0
.end method

.method private getSettingValues()Z
    .registers 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/systemui/util/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->getShortcutAppList()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c0

    const-string/jumbo v6, "ShortcutManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSettingValues("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v4}, Lcom/android/systemui/util/ShortcutManager;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_42

    array-length v6, v5

    const/4 v7, 0x2

    if-ge v6, v7, :cond_4f

    :cond_42
    iget-object v6, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v6, v6, v10

    iput-object v9, v6, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v6, v6, v11

    iput-object v9, v6, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    return v3

    :cond_4f
    const/4 v1, 0x0

    :goto_50
    array-length v6, v5

    if-ge v1, v6, :cond_cc

    const/4 v6, 0x4

    if-ge v1, v6, :cond_cc

    const-string/jumbo v6, "1"

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_89

    add-int/lit8 v6, v1, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_7b

    iget-object v6, p0, Lcom/android/systemui/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    add-int/lit8 v7, v1, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_7b

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_7b
    iget-object v6, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    div-int/lit8 v7, v1, 0x2

    aget-object v6, v6, v7

    iput-object v0, v6, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_86

    const/4 v3, 0x1

    :cond_86
    :goto_86
    add-int/lit8 v1, v1, 0x2

    goto :goto_50

    :cond_89
    const-string/jumbo v6, "ShortcutManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    div-int/lit8 v7, v1, 0x2

    aget-object v6, v6, v7

    iput-object v9, v6, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    goto :goto_86

    :cond_c0
    iget-object v6, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v6, v6, v10

    iput-object v9, v6, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v6, v6, v11

    iput-object v9, v6, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    :cond_cc
    return v3
.end method

.method private getShortcutIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 7

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isIconSquicleMode()Z

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_29

    move v2, v3

    :goto_c
    invoke-virtual {p1, v4, v3, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_20

    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_20

    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ActivityInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_20
    iget v2, p0, Lcom/android/systemui/util/ShortcutManager;->mIconSize:I

    iget v3, p0, Lcom/android/systemui/util/ShortcutManager;->mIconSize:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/util/ShortcutManager;->drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    return-object v2

    :cond_29
    const/4 v2, 0x0

    goto :goto_c
.end method

.method private handleUpdateShortcuts()V
    .registers 3

    invoke-direct {p0}, Lcom/android/systemui/util/ShortcutManager;->getSettingValues()Z

    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x2

    if-ge v0, v1, :cond_13

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/util/ShortcutManager;->updateShortcut(ILandroid/content/ComponentName;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_13
    return-void
.end method

.method private isSamsungPhonePackage(Landroid/content/ComponentName;)Z
    .registers 9

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return v2

    :cond_4
    sget-object v3, Lcom/android/systemui/util/ShortcutManager;->SAMSUNG_PHONE_PACKAGES:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_8
    if-ge v1, v4, :cond_28

    aget-object v0, v3, v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const-string/jumbo v5, "com.android.dialer.DialtactsActivity"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v1, 0x1

    return v1

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_28
    return v2
.end method

.method private resetShortcut(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->enabled:Z

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iput-object v2, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iput-object v2, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->sendUpdateShortcutViewToCallback(I)V

    return-void
.end method

.method private sendUpdateIconOnlyToCallback(I)V
    .registers 6

    iget-object v3, p0, Lcom/android/systemui/util/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;

    invoke-interface {v3, p1}, Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;->updateShortcutIconOnly(I)V

    goto :goto_6

    :cond_24
    return-void
.end method

.method private sendUpdateShortcutViewToCallback(I)V
    .registers 6

    iget-object v3, p0, Lcom/android/systemui/util/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;

    invoke-interface {v3, p1}, Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;->updateShortcutView(I)V

    goto :goto_6

    :cond_24
    return-void
.end method

.method private sendUpdateWholeShortcutViewToCallback(Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    invoke-interface {p1, v0}, Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;->updateShortcutView(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method

.method private updateShortcut(ILandroid/content/ComponentName;)V
    .registers 7

    new-instance v0, Lcom/android/systemui/util/ShortcutManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/util/ShortcutManager$5;-><init>(Lcom/android/systemui/util/ShortcutManager;ILandroid/content/ComponentName;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/ComponentName;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public createAppShortcutDataFromPackageName(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v3, Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;

    invoke-direct {v3}, Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;-><init>()V

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_30

    const-string/jumbo v4, "ShortcutManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createShortcutDataFromPackageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is disabled from settings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_30
    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    const v7, 0xc0001

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_45

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_45
    if-nez v0, :cond_74

    const-string/jumbo v4, "ShortcutManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createShortcutDataFromPackageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " activityInfo is null, resolveInfo is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",  return FALSE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_74
    iget-boolean v4, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v4, :cond_b3

    const-string/jumbo v4, "ShortcutManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createShortcutDataFromPackageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/util/ShortcutManager;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is disabled."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v4, v9, :cond_b3

    const-string/jumbo v4, "ShortcutManager"

    const-string/jumbo v5, "createShortcutDataFromPackageName - getComponentEnabled ... !COMPONENT_...STATE_ENABLED."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_b3
    iput-boolean v9, v3, Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;->enabled:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->getShortcutIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, v3, Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;->mAppLabel:Ljava/lang/String;

    return-object v3
.end method

.method public getApplicationLabel(I)Ljava/lang/String;
    .registers 3

    if-gez p1, :cond_b

    const/4 v0, 0x2

    if-lt p1, v0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "Shortcut"

    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent(I)Landroid/content/Intent;
    .registers 6

    if-gez p1, :cond_b

    const/4 v1, 0x2

    if-lt p1, v1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string/jumbo v1, "ShortcutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "th = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is camera package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/util/ShortcutManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1

    :cond_3d
    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1}, Lcom/android/systemui/util/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_58

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_USIM_TEXT:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_58

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_58
    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_6c

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_6c
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public getIntent(Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;)Landroid/content/Intent;
    .registers 6

    const/4 v3, 0x0

    if-nez p1, :cond_d

    const-string/jumbo v1, "ShortcutManager"

    const-string/jumbo v2, "getIntent, ShortcutData is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_d
    iget-object v1, p1, Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string/jumbo v1, "ShortcutManager"

    const-string/jumbo v2, "data is camera package"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/util/ShortcutManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1

    :cond_23
    iget-object v1, p1, Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1}, Lcom/android/systemui/util/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_34
    iget-object v1, p1, Lcom/samsung/systemui/splugins/lockstar/LockStarAppShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_44

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_44
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public getShortcutContentDescription(I)Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->getApplicationLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    if-gez p1, :cond_b

    const/4 v0, 0x2

    if-lt p1, v0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getShortcutHintText(I)Ljava/lang/CharSequence;
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->getApplicationLabel(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1206b1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasShortcutForLeft()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->enabled:Z

    return v0
.end method

.method public hasShortcutForRight()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->enabled:Z

    return v0
.end method

.method public isLeftShortcutForCamera()Z
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    :cond_17
    return v2
.end method

.method public isLeftShortcutForLiveIcon()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->isShortcutForLiveIcion(I)Z

    move-result v0

    return v0
.end method

.method public isLeftShortcutForPhone()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isRightShortcutForCamera()Z
    .registers 4

    const/4 v2, 0x1

    const-string/jumbo v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    :cond_17
    return v2
.end method

.method public isRightShortcutForLiveIcon()Z
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->isShortcutForLiveIcion(I)Z

    move-result v0

    return v0
.end method

.method public isRightShortcutForPhone()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isSamsungCameraPackage(Landroid/content/ComponentName;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    const-string/jumbo v0, "com.sec.android.app.camera"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShortcutForLiveIcion(I)Z
    .registers 9

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-nez v2, :cond_a

    return v3

    :cond_a
    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/util/ShortcutManager;->SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_18
    if-ge v2, v5, :cond_27

    aget-object v1, v4, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v2, 0x1

    return v2

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_27
    return v3
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/util/ShortcutManager;->mIconSize:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->updateShortcutsIcon(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/ShortcutManager;->updateShortcutsIcon(I)V

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "ShortcutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Shortcut callback registered successfully, callback is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string/jumbo v0, "ShortcutManager"

    const-string/jumbo v1, "send updateShortcutView to registered callback"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ShortcutManager;->sendUpdateWholeShortcutViewToCallback(Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;)V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    :cond_41
    monitor-exit p0

    return-void

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldDisableShortcutWithMdm()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcutVisibleForMDM:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public unregisterCallback(Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_37

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string/jumbo v1, "ShortcutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Callback removed successfully , callback was : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_2 .. :try_end_37} :catchall_3c

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3a
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateShortcuts()V
    .registers 3

    const/16 v1, 0x16b3

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateShortcutsIcon(I)V
    .registers 6

    new-instance v0, Lcom/android/systemui/util/ShortcutManager$6;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/ShortcutManager$6;-><init>(Lcom/android/systemui/util/ShortcutManager;I)V

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager;->mShortcuts:[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1a
    return-void
.end method
