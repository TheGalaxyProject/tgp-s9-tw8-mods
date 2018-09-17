.class public Lcom/android/server/pm/KnoxKeyguardScrimView;
.super Landroid/widget/LinearLayout;
.source "KnoxKeyguardScrimView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KnoxKeyguardScrimView$1;,
        Lcom/android/server/pm/KnoxKeyguardScrimView$2;,
        Lcom/android/server/pm/KnoxKeyguardScrimView$3;,
        Lcom/android/server/pm/KnoxKeyguardScrimView$4;,
        Lcom/android/server/pm/KnoxKeyguardScrimView$5;,
        Lcom/android/server/pm/KnoxKeyguardScrimView$BootReceiver;,
        Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_DEVICE_COLOR_BLACK:Ljava/lang/String; = "black"

.field private static final DEFAULT_THUMB_NAME:Ljava/lang/String; = "default_thumb"

.field private static final FLAG_HOME_KEY_INPUT:I = 0x8

.field private static final FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field private static final KNOX_LOCK_SCREEN_SERVICE:Ljava/lang/String; = "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

.field private static final LOG_TAG:Ljava/lang/String; = "KnoxKeyguardScrimView"

.field private static final SECURE_FOLDER_LOCK_SCREEN_SERVICE:Ljava/lang/String; = "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

.field private static final SYSTEMUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TOLERABLE_SCRIM_VISIBLE_TIME_MILLIS:I = 0x1388

.field private static final WALLPAPER_PACKAGE:Ljava/lang/String; = "com.samsung.android.wallpaper.res"

.field private static isScrimVisible:Z


# instance fields
.field private final desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field mHandler:Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;

.field private mHideScrimRunnable:Ljava/lang/Runnable;

.field mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mScrimVisibleLock:Ljava/lang/Object;

.field mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mShowScrimRunnable:Ljava/lang/Runnable;

.field private mShowScrimRunnableSF:Ljava/lang/Runnable;

.field mThread:Landroid/os/HandlerThread;

.field mWindowManager:Landroid/view/WindowManager;

.field mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/pm/KnoxKeyguardScrimView;->isScrimVisible:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/KnoxKeyguardScrimView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/KnoxKeyguardScrimView;)Lcom/samsung/android/knox/SemPersonaManager;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/KnoxKeyguardScrimView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->getDefaultWallpaper()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/KnoxKeyguardScrimView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->registerDesktopModeEventListener()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/KnoxKeyguardScrimView;->isScrimVisible:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mHandler:Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;

    iput-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mThread:Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mScrimVisibleLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/server/pm/KnoxKeyguardScrimView$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/KnoxKeyguardScrimView$1;-><init>(Lcom/android/server/pm/KnoxKeyguardScrimView;)V

    iput-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mShowScrimRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/server/pm/KnoxKeyguardScrimView$2;

    invoke-direct {v2, p0}, Lcom/android/server/pm/KnoxKeyguardScrimView$2;-><init>(Lcom/android/server/pm/KnoxKeyguardScrimView;)V

    iput-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mShowScrimRunnableSF:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/server/pm/KnoxKeyguardScrimView$3;

    invoke-direct {v2, p0}, Lcom/android/server/pm/KnoxKeyguardScrimView$3;-><init>(Lcom/android/server/pm/KnoxKeyguardScrimView;)V

    iput-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mHideScrimRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/server/pm/KnoxKeyguardScrimView$4;

    invoke-direct {v2, p0}, Lcom/android/server/pm/KnoxKeyguardScrimView$4;-><init>(Lcom/android/server/pm/KnoxKeyguardScrimView;)V

    iput-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    new-instance v2, Lcom/android/server/pm/KnoxKeyguardScrimView$5;

    invoke-direct {v2, p0}, Lcom/android/server/pm/KnoxKeyguardScrimView$5;-><init>(Lcom/android/server/pm/KnoxKeyguardScrimView;)V

    iput-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerService;

    iput-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->createScrim()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "KnoxKeyguardScrimView"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;

    iget-object v3, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;-><init>(Lcom/android/server/pm/KnoxKeyguardScrimView;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mHandler:Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;

    return-void
.end method

.method private createScrim()V
    .registers 9

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/android/server/pm/KnoxKeyguardScrimView;->setBackgroundColor(I)V

    const v4, -0x7ffff6f8

    const/4 v6, -0x1

    const/16 v7, 0x964

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x964

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-string/jumbo v1, "ContainerKeyguardScrim"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/server/pm/KnoxKeyguardScrimView;->setVisibility(I)V

    return-void
.end method

.method private getBitmapWallpaper()Landroid/graphics/Bitmap;
    .registers 10

    const/4 v8, 0x0

    const-string/jumbo v6, "KnoxKeyguardScrimView"

    const-string/jumbo v7, "getBitmapWallpaper"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wallpaper"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_37

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x4

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6, v8, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    :try_start_2e
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    :cond_31
    :goto_31
    return-object v5

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    :cond_37
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_31
.end method

.method private getDefaultWallpaper()V
    .registers 12

    const/4 v10, -0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->openDefaultInfinityWallpaper()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_22

    :try_start_15
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v8, 0x0

    invoke-static {v1, v8, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_1e} :catch_50
    .catchall {:try_start_15 .. :try_end_1e} :catchall_5e

    move-result-object v7

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_22
    :goto_22
    const-string/jumbo v8, "KnoxKeyguardScrimView"

    const-string/jumbo v9, "getting wallpaper data has been completed."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_68

    new-instance v3, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/KnoxKeyguardScrimView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4f
    return-void

    :catch_50
    move-exception v0

    :try_start_51
    const-string/jumbo v8, "KnoxKeyguardScrimView"

    const-string/jumbo v9, "Can\'t decode stream"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_5e

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_22

    :catchall_5e
    move-exception v8

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v8

    :cond_63
    invoke-direct {p0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->getBitmapWallpaper()Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_22

    :cond_68
    const-string/jumbo v8, "KnoxKeyguardScrimView"

    const-string/jumbo v9, "something was wrong"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "wallpaper"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/WallpaperManager;

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/pm/KnoxKeyguardScrimView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4f
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private openDefaultInfinityWallpaper()Ljava/io/InputStream;
    .registers 13

    const/4 v4, 0x0

    const/4 v7, 0x0

    :try_start_2
    const-string/jumbo v9, "wallpaper"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLastWallpaper()Landroid/content/ComponentName;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_94

    move-result-object v7

    :goto_f
    const/4 v0, 0x0

    if-eqz v7, :cond_79

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/pm/KnoxKeyguardScrimView;->parseInfinityColorInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "default_thumb"

    const-string/jumbo v9, "black"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "default_thumb_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3a
    if-eqz v0, :cond_79

    const/4 v6, 0x0

    :try_start_3d
    iget-object v9, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.samsung.android.wallpaper.res"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "drawable"

    const-string/jumbo v11, "com.samsung.android.wallpaper.res"

    invoke-virtual {v9, v1, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5c} :catch_9a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_5c} :catch_9f

    move-result-object v4

    :goto_5d
    if-nez v4, :cond_79

    :try_start_5f
    iget-object v9, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string/jumbo v10, "drawable"

    const-string/jumbo v11, "android"

    invoke-virtual {v9, v1, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v9, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_78
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5f .. :try_end_78} :catch_9f

    move-result-object v4

    :cond_79
    :goto_79
    const-string/jumbo v9, "KnoxKeyguardScrimView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "openDefaultInfinityWallpaper color="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :catch_94
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :catch_9a
    move-exception v3

    :try_start_9b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_5d

    :catch_9f
    move-exception v2

    const-string/jumbo v9, "KnoxKeyguardScrimView"

    const-string/jumbo v10, "Resource not found for still infinity wallpaper"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79
.end method

.method private parseInfinityColorInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    :try_start_7
    const-string/jumbo v2, "com.android.systemui.infinity.InfinityWallpaper"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7 .. :try_end_15} :catch_31

    move-result-object v0

    :cond_16
    :goto_16
    const-string/jumbo v2, "KnoxKeyguardScrimView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseInfinityColorInfo colorInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_31
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_16
.end method

.method private registerDesktopModeEventListener()V
    .registers 3

    const-string/jumbo v0, "KnoxKeyguardScrimView"

    const-string/jumbo v1, "register DesktopMode EventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :goto_21
    return-void

    :cond_22
    const-string/jumbo v0, "KnoxKeyguardScrimView"

    const-string/jumbo v1, "register DesktopMode EventListener was failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method


# virtual methods
.method public hideScrim()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mScrimVisibleLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/android/server/pm/KnoxKeyguardScrimView;->isScrimVisible:Z

    if-nez v0, :cond_12

    const-string/jumbo v0, "KnoxKeyguardScrimView"

    const-string/jumbo v2, "scrim not visible"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1c

    monitor-exit v1

    return-void

    :cond_12
    const/4 v0, 0x0

    :try_start_13
    sput-boolean v0, Lcom/android/server/pm/KnoxKeyguardScrimView;->isScrimVisible:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_1c

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mHideScrimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isKnoxKeyguardServiceRunning(I)Z
    .registers 10

    const/4 v7, 0x0

    const-string/jumbo v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_16

    const-string/jumbo v4, "KnoxKeyguardScrimView"

    const-string/jumbo v5, "cannot get ActivityManagerService!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_16
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_65

    const-string/jumbo v3, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardService"

    :goto_1f
    const v4, 0x7fffffff

    invoke-virtual {v0, v4, p1}, Lcom/android/server/am/ActivityManagerService;->getServicesForUser(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string/jumbo v4, "KnoxKeyguardScrimView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isKnoxKeyguardServiceRunning(user:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") true"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    return v4

    :cond_65
    const-string/jumbo v3, "com.samsung.android.knox.containeragent.knoxkeyguard.KeyguardService"

    goto :goto_1f

    :cond_69
    const-string/jumbo v4, "KnoxKeyguardScrimView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isKnoxKeyguardServiceRunning(user:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public showScrim(Z)V
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mScrimVisibleLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    sget-boolean v0, Lcom/android/server/pm/KnoxKeyguardScrimView;->isScrimVisible:Z

    if-eqz v0, :cond_13

    const-string/jumbo v0, "KnoxKeyguardScrimView"

    const-string/jumbo v2, "scrim already visible"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_2d

    monitor-exit v1

    return-void

    :cond_13
    const/4 v0, 0x1

    :try_start_14
    sput-boolean v0, Lcom/android/server/pm/KnoxKeyguardScrimView;->isScrimVisible:Z
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_2d

    monitor-exit v1

    const-string/jumbo v0, "KnoxKeyguardScrimView"

    const-string/jumbo v1, "showScrim(), start freezing screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    if-eqz p1, :cond_30

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mShowScrimRunnableSF:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->post(Ljava/lang/Runnable;)Z

    :goto_2c
    return-void

    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_30
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mShowScrimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2c
.end method

.method public showScrimWithoutFreeze(Z)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mScrimVisibleLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/android/server/pm/KnoxKeyguardScrimView;->isScrimVisible:Z

    if-eqz v0, :cond_12

    const-string/jumbo v0, "KnoxKeyguardScrimView"

    const-string/jumbo v2, "scrim already visible"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_27

    monitor-exit v1

    return-void

    :cond_12
    const/4 v0, 0x1

    :try_start_13
    sput-boolean v0, Lcom/android/server/pm/KnoxKeyguardScrimView;->isScrimVisible:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_27

    monitor-exit v1

    const-string/jumbo v0, "KnoxKeyguardScrimView"

    const-string/jumbo v1, "showScrim(), without freezing screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2a

    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mShowScrimRunnableSF:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->post(Ljava/lang/Runnable;)Z

    :goto_26
    return-void

    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2a
    iget-object v0, p0, Lcom/android/server/pm/KnoxKeyguardScrimView;->mShowScrimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/KnoxKeyguardScrimView;->post(Ljava/lang/Runnable;)Z

    goto :goto_26
.end method
