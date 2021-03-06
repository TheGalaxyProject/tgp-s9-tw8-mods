.class Lcom/android/systemui/ImageWallpaper$DrawableEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawableEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;,
        Lcom/android/systemui/ImageWallpaper$DrawableEngine$2;,
        Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;
    }
.end annotation


# instance fields
.field mBackground:Landroid/graphics/Bitmap;

.field mBackgroundHeight:I

.field mBackgroundWidth:I

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDisplayHeightAtLastSurfaceSizeUpdate:I

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayWidthAtLastSurfaceSizeUpdate:I

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mExtractMode:I

.field protected mFilterParams:[F

.field private mForceDraw:Z

.field mGetBackgroundHSV:Z

.field private mLastDeviceHeight:I

.field private mLastDeviceWidth:I

.field private mLastRequestedHeight:I

.field private mLastRequestedWidth:I

.field mLastRotation:I

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastXTranslation:I

.field mLastYTranslation:I

.field private mLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mMobileKeyboardHeight:I

.field mMobileKeyboardWidth:I

.field mNavigationBarColorHSV:[F

.field private mNavigationBarHeight:I

.field mNeedBlackNavigationBar:I

.field mNeedBlackStatusBar:I

.field mNeedBlackText:I

.field private mNeedsDrawAfterLoadingWallpaper:Z

.field mOffsetsChanged:Z

.field mOrthoHeight:I

.field mOrthoWidth:I

.field private mRotationAtLastSurfaceSizeUpdate:I

.field mScale:F

.field mStatusBarColorHSV:[F

.field private mSurfaceValid:Z

.field private final mTmpDisplayInfo:Landroid/view/DisplayInfo;

.field mVisible:Z

.field mVpHeight:I

.field mVpWidth:I

.field mWallpaperColorHSV:[F

.field private mWallpaperTiltSettingChanged:Landroid/database/ContentObserver;

.field private mWallpaperType:I

.field private mWallpaperTypeObserver:Landroid/database/ContentObserver;

.field mXOffset:F

.field mYOffset:F

.field final synthetic this$0:Lcom/android/systemui/ImageWallpaper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastDeviceHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastDeviceWidth:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedsDrawAfterLoadingWallpaper:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperType:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/ImageWallpaper$DrawableEngine;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastDeviceHeight:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/ImageWallpaper$DrawableEngine;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastDeviceWidth:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedsDrawAfterLoadingWallpaper:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/ImageWallpaper$DrawableEngine;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Landroid/view/DisplayInfo;
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/ImageWallpaper;)V
    .registers 7

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    iput-boolean v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    iput-boolean v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    const/16 v0, 0x19

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRotationAtLastSurfaceSizeUpdate:I

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayWidthAtLastSurfaceSizeUpdate:I

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayHeightAtLastSurfaceSizeUpdate:I

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    iput-boolean v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mGetBackgroundHSV:Z

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackStatusBar:I

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackNavigationBar:I

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperColorHSV:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mStatusBarColorHSV:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNavigationBarColorHSV:[F

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNavigationBarHeight:I

    iput v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperType:I

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastDeviceWidth:I

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastDeviceHeight:I

    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;-><init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperTiltSettingChanged:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$2;-><init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperTypeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$3;-><init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {p1}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperType:I

    const-string/jumbo v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWallpaperType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wallpaper_extract_color_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mExtractMode:I

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_ca

    invoke-virtual {p1}, Lcom/android/systemui/ImageWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNavigationBarHeight:I

    :goto_c6
    invoke-virtual {p0, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->setFixedSizeAllowed(Z)V

    return-void

    :cond_ca
    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNavigationBarHeight:I

    goto :goto_c6
.end method

.method private buildProgram(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    const/4 v6, 0x1

    const/4 v8, 0x0

    const v5, 0x8b31

    invoke-direct {p0, p1, v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildShader(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_c

    return v8

    :cond_c
    const v5, 0x8b30

    invoke-direct {p0, p2, v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildShader(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_16

    return v8

    :cond_16
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    new-array v3, v6, [I

    const v5, 0x8b82

    invoke-static {v2, v5, v3, v8}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v5, v3, v8

    if-eq v5, v6, :cond_5a

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "ImageWallpaperGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error while linking program:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return v8

    :cond_5a
    return v2
.end method

.method private buildShader(Ljava/lang/String;I)I
    .registers 10

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {p2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    new-array v2, v4, [I

    const v3, 0x8b81

    invoke-static {v1, v3, v2, v6}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v3, v2, v6

    if-eq v3, v4, :cond_40

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "ImageWallpaperGL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error while compiling shader:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v6

    :cond_40
    return v1
.end method

.method private checkEglError()V
    .registers 5

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_28

    const-string/jumbo v1, "ImageWallpaperGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EGL error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void
.end method

.method private checkGlError()V
    .registers 5

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_29

    const-string/jumbo v1, "ImageWallpaperGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_29
    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 8

    const/4 v4, 0x1

    const/4 v6, 0x0

    new-array v5, v4, [I

    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getConfig()[I

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_38

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eglChooseConfig failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    aget v0, v5, v6

    if-lez v0, :cond_3f

    aget-object v0, v3, v6

    return-object v0

    :cond_3f
    const/4 v0, 0x0

    return-object v0
.end method

.method private createMesh(IIFF)Ljava/nio/FloatBuffer;
    .registers 13

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v3, 0x14

    new-array v2, v3, [F

    int-to-float v3, p1

    aput v3, v2, v7

    const/4 v3, 0x1

    aput p4, v2, v3

    const/4 v3, 0x2

    aput v5, v2, v3

    const/4 v3, 0x3

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput p3, v2, v3

    const/4 v3, 0x6

    aput p4, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    const/16 v3, 0x8

    aput v6, v2, v3

    const/16 v3, 0x9

    aput v6, v2, v3

    int-to-float v3, p1

    const/16 v4, 0xa

    aput v3, v2, v4

    int-to-float v3, p2

    const/16 v4, 0xb

    aput v3, v2, v4

    const/16 v3, 0xc

    aput v5, v2, v3

    const/16 v3, 0xd

    aput v5, v2, v3

    const/16 v3, 0xe

    aput v5, v2, v3

    const/16 v3, 0xf

    aput p3, v2, v3

    int-to-float v3, p2

    const/16 v4, 0x10

    aput v3, v2, v4

    const/16 v3, 0x11

    aput v5, v2, v3

    const/16 v3, 0x12

    aput v6, v2, v3

    const/16 v3, 0x13

    aput v5, v2, v3

    array-length v3, v2

    mul-int/lit8 v0, v3, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v1
.end method

.method private drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V
    .registers 13

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_71

    :try_start_6
    const-string/jumbo v1, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Redrawing: left="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", top="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v1, p4

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v2, v5

    add-float v3, v1, v2

    int-to-float v1, p5

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v2, v5

    add-float v4, v1, v2

    if-ltz p2, :cond_49

    if-gez p3, :cond_5c

    :cond_49
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    int-to-float v1, p4

    int-to-float v2, p5

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_5c
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6e

    new-instance v6, Landroid/graphics/RectF;

    int-to-float v1, p4

    int-to-float v2, p5

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_6e
    .catchall {:try_start_6 .. :try_end_6e} :catchall_72

    :cond_6e
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_71
    return-void

    :catchall_72
    move-exception v1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v1
.end method

.method private drawWallpaperWithOpenGL(Landroid/view/SurfaceHolder;IIII)Z
    .registers 37

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->initGL(Landroid/view/SurfaceHolder;)Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x0

    return v7

    :cond_8
    const-string/jumbo v7, "ImageWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "drawWallpaperWithOpenGL() w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " left="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " top="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p4

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v8, v9

    add-float v24, v7, v8

    move/from16 v0, p5

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v8, v9

    add-float v18, v7, v8

    invoke-interface/range {p1 .. p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v20

    new-instance v5, Landroid/renderscript/Matrix4f;

    invoke-direct {v5}, Landroid/renderscript/Matrix4f;-><init>()V

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string/jumbo v7, "ImageWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "drawWallpaperWithOpenGL frame.width()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " frame.height="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bitmapWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bitmapHeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->isMobileKeyboardCovered()Z

    move-result v7

    if-eqz v7, :cond_2fe

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    if-eq v7, v8, :cond_120

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    if-eq v7, v8, :cond_120

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    sub-int/2addr v7, v8

    div-int/lit8 v21, v7, 0x2

    if-ltz v21, :cond_2d5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    add-int v29, v7, p4

    sub-int p4, p4, v21

    move/from16 v0, v21

    int-to-float v7, v0

    sub-float v24, v24, v7

    :cond_120
    :goto_120
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->-get1()Z

    move-result v7

    if-eqz v7, :cond_2f2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v7}, Lcom/android/systemui/ImageWallpaper;->-get5(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v7

    if-eqz v7, :cond_2f2

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    sub-int/2addr v7, v8

    div-int/lit8 v22, v7, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    sub-int/2addr v7, v8

    add-int v30, v7, v22

    :goto_146
    const-string/jumbo v7, "ImageWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "drawWallpaperWithOpenGL  vp_x: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " vp_y : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16f
    const-string/jumbo v7, "ImageWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "drawWallpaperWithOpenGL  mOrthoWidth : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mOrthoHeight : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "ImageWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "drawWallpaperWithOpenGL  mVpWidth : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mVpHeight : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "ImageWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "drawWallpaperWithOpenGL  vp_x : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " vp_y : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    int-to-float v8, v8

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual/range {v5 .. v11}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, v24

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->createMesh(IIFF)Ljava/nio/FloatBuffer;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v26

    const-string/jumbo v7, "attribute vec4 position;\nattribute vec2 texCoords;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\n\nvoid main(void) {\n    outTexCoords = texCoords;\n    gl_Position = projection * position;\n}\n\n"

    const-string/jumbo v8, "precision mediump float;\n\nvarying vec2 outTexCoords;\nuniform sampler2D texture;\n\nvoid main(void) {\n    gl_FragColor = texture2D(texture, outTexCoords);\n}\n\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    const-string/jumbo v7, "position"

    move/from16 v0, v23

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "texCoords"

    move/from16 v0, v23

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v12

    const-string/jumbo v7, "texture"

    move/from16 v0, v23

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v28

    const-string/jumbo v7, "projection"

    move/from16 v0, v23

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v27

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v0, v1, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v7, 0xde1

    move/from16 v0, v26

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static/range {v23 .. v23}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v12}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v7, 0x0

    move/from16 v0, v28

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-virtual {v5}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, v27

    invoke-static {v0, v8, v9, v7, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    if-gtz p2, :cond_28a

    if-lez p3, :cond_296

    :cond_28a
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v7, 0x4000

    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    :cond_296
    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v7, 0x3

    invoke-virtual {v11, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v13, 0x3

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x14

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v25

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkEglError()V

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->finishGL(II)V

    return v25

    :cond_2d5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    add-int v7, v7, p4

    add-int v29, v7, v21

    goto/16 :goto_120

    :cond_2f2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    sub-int v30, v7, v8

    goto/16 :goto_146

    :cond_2fe
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    goto/16 :goto_16f
.end method

.method private finishGL(II)V
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [I

    aput p1, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void
.end method

.method private getConfig()[I
    .registers 2

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3027
        0x3038
        0x3038
    .end array-data
.end method

.method private getDefaultDisplayInfo()Landroid/view/DisplayInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDefaultDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method private getDisplayedStatusBarRegion([Landroid/graphics/Rect;)V
    .registers 15

    const/4 v12, 0x0

    const-wide v10, 0x3fb999999999999aL    # 0.1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->-get1()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->-get5(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_47

    if-le v7, v6, :cond_40

    div-int/lit8 v4, v6, 0xb

    div-int/lit8 v5, v7, 0xb

    move v3, v7

    move v2, v6

    :goto_32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    aput-object v0, p1, v12

    aget-object v1, p1, v12

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getImageRegionforStatusBar(Landroid/graphics/Rect;IIII)V

    :cond_3f
    return-void

    :cond_40
    div-int/lit8 v4, v7, 0xb

    div-int/lit8 v5, v6, 0xb

    move v3, v6

    move v2, v7

    goto :goto_32

    :cond_47
    if-le v7, v6, :cond_52

    int-to-double v0, v6

    mul-double/2addr v0, v10

    double-to-int v4, v0

    int-to-double v0, v7

    mul-double/2addr v0, v10

    double-to-int v5, v0

    move v3, v7

    move v2, v6

    goto :goto_32

    :cond_52
    int-to-double v0, v7

    mul-double/2addr v0, v10

    double-to-int v4, v0

    int-to-double v0, v6

    mul-double/2addr v0, v10

    double-to-int v5, v0

    move v3, v6

    move v2, v7

    goto :goto_32
.end method

.method private getDisplayedWallpaperRegion([Landroid/graphics/Rect;[Landroid/graphics/Rect;)V
    .registers 17

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_da

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v8

    const-string/jumbo v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDisplayedWallpaperRegion() dw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", dh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNavigationBarHeight:I

    int-to-float v0, v9

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    float-to-int v9, v0

    int-to-float v0, v8

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    float-to-int v8, v0

    int-to-float v0, v7

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    float-to-int v7, v0

    if-le v9, v8, :cond_db

    move v4, v9

    move v3, v8

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v5, v0, v8

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v6, v0, v9

    :goto_5d
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v0, 0x0

    aget-object v2, p2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getImageRegionForDisplay(Landroid/graphics/Rect;Landroid/graphics/Rect;IIIII)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mExtractMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_da

    if-ge v9, v8, :cond_eb

    move v4, v9

    move v3, v8

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v5, v0, v8

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v6, v0, v9

    :goto_8c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aget-object v1, p1, v0

    const/4 v0, 0x0

    aget-object v2, p2, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getImageRegionForDisplay(Landroid/graphics/Rect;Landroid/graphics/Rect;IIIII)V

    const/4 v0, 0x2

    aget-object v0, p1, v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    aget-object v2, p1, v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v12, 0x0

    aget-object v12, p1, v12

    iget v12, v12, Landroid/graphics/Rect;->right:I

    const/4 v13, 0x0

    aget-object v13, p1, v13

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v12, 0x0

    aget-object v12, p1, v12

    iget v12, v12, Landroid/graphics/Rect;->right:I

    const/4 v13, 0x1

    aget-object v13, p1, v13

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    :cond_da
    return-void

    :cond_db
    move v4, v8

    move v3, v9

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v5, v0, v9

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v6, v0, v8

    goto/16 :goto_5d

    :cond_eb
    move v4, v8

    move v3, v9

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v5, v0, v9

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v6, v0, v8

    goto :goto_8c
.end method

.method private initGL(Landroid/view/SurfaceHolder;)Z
    .registers 16

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v6

    check-cast v6, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v6, v7, :cond_3f

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "eglGetDisplay failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3f
    const/4 v6, 0x2

    new-array v5, v6, [I

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v6, v7, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v6

    if-nez v6, :cond_70

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "eglInitialize failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_70
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v6, :cond_83

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "eglConfig not initialized"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_83
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v6, v7, :cond_b9

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "createContext failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_b9
    const/16 v6, 0x3057

    const/16 v7, 0x3056

    const/16 v8, 0x3038

    filled-new-array {v6, v12, v7, v12, v8}, [I

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v6, v7, v8, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v7, v4, v4, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    new-array v3, v12, [I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    const/16 v6, 0xd33

    invoke-static {v6, v3, v11}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v10, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v7, v8, v9, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v6, v7, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    aget v7, v3, v11

    if-gt v6, v7, :cond_105

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    aget v7, v3, v11

    if-le v6, v7, :cond_15d

    :cond_105
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    const-string/jumbo v6, "ImageWallpaperGL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requested  texture size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " exceeds the support maximum of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v3, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v3, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_15d
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v6, v7, v8, p1, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v6, :cond_173

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v6, v7, :cond_1c5

    :cond_173
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    const/16 v6, 0x300b

    if-eq v1, v6, :cond_181

    const/16 v6, 0x3003

    if-ne v1, v6, :cond_1a7

    :cond_181
    const-string/jumbo v6, "ImageWallpaperGL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "createWindowSurface returned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_1a7
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "createWindowSurface failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1c5
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v10, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v7, v8, v9, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v6

    if-nez v6, :cond_1f9

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "eglMakeCurrent failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1f9
    return v12
.end method

.method private isWhiteCSCWallpaper()Z
    .registers 6

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "need_dark_font"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWhiteCSCWallpaper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "XTE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string/jumbo v2, "SMA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    :cond_4c
    const/4 v2, 0x1

    return v2

    :cond_4e
    const/4 v2, 0x0

    return v2
.end method

.method private loadTexture(Landroid/graphics/Bitmap;)I
    .registers 10

    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    new-array v7, v3, [I

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v3, v7, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    aget v6, v7, v1

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    const/16 v2, 0x2801

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2802

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_42

    const/16 v2, 0x1908

    const/16 v4, 0x1401

    move-object v3, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V

    :cond_42
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    return v6
.end method

.method private loadWallpaper(ZZ)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "ImageWallpaper"

    const-string/jumbo v1, "loadWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedsDrawAfterLoadingWallpaper:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedsDrawAfterLoadingWallpaper:Z

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1d

    if-eqz p2, :cond_2d

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    :cond_1d
    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;-><init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    return-void

    :cond_2d
    const-string/jumbo v0, "ImageWallpaper"

    const-string/jumbo v1, "Skipping loadWallpaper, already in flight "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unloadWallpaper(Z)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    :cond_e
    iput-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_16

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    :cond_16
    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;-><init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLoader:Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 8

    const/16 v1, 0x3098

    const/4 v2, 0x2

    const/16 v3, 0x3038

    filled-new-array {v1, v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1
.end method

.method drawFrame()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame(Z)V

    return-void
.end method

.method drawFrame(Z)V
    .registers 32

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceValid:Z

    if-nez v4, :cond_7

    return-void

    :cond_7
    :try_start_7
    const-string/jumbo v4, "drawWallpaper"

    const-wide/16 v26, 0x8

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v15

    iget v13, v15, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v12, v15, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v0, v15, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v19, v0

    const-string/jumbo v4, "ImageWallpaper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "newRotation : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ",mLastRotation : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/systemui/ImageWallpaper;->WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

    if-eqz v4, :cond_99

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v4, v4, Lcom/android/systemui/ImageWallpaper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_99

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v4, v0, :cond_99

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    move/from16 v0, v19

    if-eq v0, v4, :cond_99

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    const-string/jumbo v4, "ImageWallpaper"

    const-string/jumbo v25, "redraw is not needed, because rotation"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_7 .. :try_end_83} :catchall_3e4

    const-wide/16 v26, 0x8

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v4, v4, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_98

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    :cond_98
    return-void

    :cond_99
    :try_start_99
    sget-boolean v4, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v4, :cond_11e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/ImageWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/systemui/ImageWallpaper;->-set2(Lcom/android/systemui/ImageWallpaper;I)I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    move/from16 v0, v19

    if-ne v0, v4, :cond_da

    if-nez p1, :cond_da

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper;->-get3(Lcom/android/systemui/ImageWallpaper;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/systemui/ImageWallpaper;->-get2(Lcom/android/systemui/ImageWallpaper;)I

    move-result v25

    move/from16 v0, v25

    if-eq v4, v0, :cond_170

    :cond_da
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRotationAtLastSurfaceSizeUpdate:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayWidthAtLastSurfaceSizeUpdate:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayHeightAtLastSurfaceSizeUpdate:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v4, v15, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    move-result v4

    if-nez v4, :cond_170

    const-string/jumbo v4, "ImageWallpaper"

    const-string/jumbo v25, "SurfaceSize updated"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z
    :try_end_108
    .catchall {:try_start_99 .. :try_end_108} :catchall_3e4

    const-wide/16 v26, 0x8

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v4, v4, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_11d

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    :cond_11d
    return-void

    :cond_11e
    :try_start_11e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    move/from16 v0, v19

    if-ne v0, v4, :cond_128

    if-eqz p1, :cond_170

    :cond_128
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v4, v15, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    move-result v4

    if-nez v4, :cond_15e

    const-string/jumbo v4, "ImageWallpaper"

    const-string/jumbo v25, "SurfaceSize updated"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z
    :try_end_148
    .catchall {:try_start_11e .. :try_end_148} :catchall_3e4

    const-wide/16 v26, 0x8

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v4, v4, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_15d

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    :cond_15d
    return-void

    :cond_15e
    :try_start_15e
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRotationAtLastSurfaceSizeUpdate:I

    iget v4, v15, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayWidthAtLastSurfaceSizeUpdate:I

    iget v4, v15, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayHeightAtLastSurfaceSizeUpdate:I

    :cond_170
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v16

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v14

    const-string/jumbo v4, "ImageWallpaper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "drawFrame:[frame.width()]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "[frame.height()]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    move/from16 v0, v16

    if-ne v0, v4, :cond_2d0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    if-eq v14, v4, :cond_2d4

    const/16 v22, 0x1

    :goto_1bd
    const-string/jumbo v4, "ImageWallpaper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "surfaceDimensionsChanged="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " mDisplayWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayWidthAtLastSurfaceSizeUpdate:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " mDisplayHeight="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayHeightAtLastSurfaceSizeUpdate:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v4, :cond_24f

    const-string/jumbo v4, "ImageWallpaper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "mNewKeyboard : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/ImageWallpaper;->-get3(Lcom/android/systemui/ImageWallpaper;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " mLastKeyboard : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/ImageWallpaper;->-get2(Lcom/android/systemui/ImageWallpaper;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " mForceDraw = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24f
    const/16 v20, 0x0

    sget-boolean v4, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v4, :cond_2f6

    if-nez v22, :cond_25f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    move/from16 v0, v19

    if-eq v0, v4, :cond_2d8

    :cond_25f
    const/16 v20, 0x1

    :goto_261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/systemui/ImageWallpaper;->-get3(Lcom/android/systemui/ImageWallpaper;)I

    move-result v25

    move/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/systemui/ImageWallpaper;->-set1(Lcom/android/systemui/ImageWallpaper;I)I

    :goto_274
    const-string/jumbo v4, "ImageWallpaper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "redrawNeeded = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", mOffsetsChanged = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v20, :cond_30c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_30c

    const-string/jumbo v4, "ImageWallpaper"

    const-string/jumbo v25, "Suppressed drawFrame since redraw is not needed and offsets have not changed."

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ba
    .catchall {:try_start_15e .. :try_end_2ba} :catchall_3e4

    const-wide/16 v26, 0x8

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v4, v4, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2cf

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    :cond_2cf
    return-void

    :cond_2d0
    const/16 v22, 0x1

    goto/16 :goto_1bd

    :cond_2d4
    const/16 v22, 0x0

    goto/16 :goto_1bd

    :cond_2d8
    :try_start_2d8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper;->-get3(Lcom/android/systemui/ImageWallpaper;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/systemui/ImageWallpaper;->-get2(Lcom/android/systemui/ImageWallpaper;)I

    move-result v25

    move/from16 v0, v25

    if-ne v4, v0, :cond_25f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z

    move/from16 v20, v0

    goto/16 :goto_261

    :cond_2f6
    if-nez v22, :cond_300

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    move/from16 v0, v19

    if-eq v0, v4, :cond_304

    :cond_300
    const/16 v20, 0x1

    goto/16 :goto_274

    :cond_304
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z

    move/from16 v20, v0

    goto/16 :goto_274

    :cond_30c
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v4, :cond_404

    const-string/jumbo v25, "ImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Reloading bitmap: mBackground, bgw, bgh, dw, dh = "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v26, ", "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3c6

    const/4 v4, 0x0

    :goto_345
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v26, ", "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3d0

    const/4 v4, 0x0

    :goto_35b
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v26, ", "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v26, ", "

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v4, v4, Lcom/android/systemui/ImageWallpaper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_3d9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v4, v4, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    const/4 v4, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadWallpaper(ZZ)V

    :goto_3a5
    const-string/jumbo v4, "ImageWallpaper"

    const-string/jumbo v25, "Reloading, resuming draw later"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b0
    .catchall {:try_start_2d8 .. :try_end_3b0} :catchall_3e4

    const-wide/16 v26, 0x8

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v4, v4, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3c5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    :cond_3c5
    return-void

    :cond_3c6
    :try_start_3c6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    goto/16 :goto_345

    :cond_3d0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    goto :goto_35b

    :cond_3d9
    const/4 v4, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadWallpaper(ZZ)V
    :try_end_3e3
    .catchall {:try_start_3c6 .. :try_end_3e3} :catchall_3e4

    goto :goto_3a5

    :catchall_3e4
    move-exception v4

    const-wide/16 v26, 0x8

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    move/from16 v25, v0

    xor-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_403

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    :cond_403
    throw v4

    :cond_404
    :try_start_404
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mGetBackgroundHSV:Z

    if-nez v4, :cond_6b9

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->isWhiteCSCWallpaper()Z

    move-result v4

    if-nez v4, :cond_41a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperType:I

    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v4, v0, :cond_5d1

    :cond_41a
    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mExtractMode:I

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v4, v0, :cond_92d

    const/4 v4, 0x3

    new-array v0, v4, [Landroid/graphics/Rect;

    move-object/from16 v24, v0

    const/4 v4, 0x3

    new-array v0, v4, [Landroid/graphics/Rect;

    move-object/from16 v21, v0

    const/4 v4, 0x3

    new-array v0, v4, [Landroid/graphics/Rect;

    move-object/from16 v18, v0

    :goto_439
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDisplayedWallpaperRegion([Landroid/graphics/Rect;[Landroid/graphics/Rect;)V

    const-string/jumbo v4, "ImageWallpaper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "drawFrame() wallpaperRegion = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v24, v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v24, v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " x "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v24, v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v24, v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperType:I

    const/16 v25, 0x2

    move/from16 v0, v25

    if-eq v4, v0, :cond_4ca

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/systemui/ImageWallpaper$ExtractColor;->getColorHSV(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)[F

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperColorHSV:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperColorHSV:[F

    if-nez v4, :cond_93e

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    :cond_4ca
    :goto_4ca
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDisplayedStatusBarRegion([Landroid/graphics/Rect;)V

    const-string/jumbo v4, "ImageWallpaper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "drawFrame() statusBarRegion = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v21, v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v21, v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " x "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v21, v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v21, v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lcom/android/systemui/ImageWallpaper$ExtractColor;->getColorHSV(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)[F

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mStatusBarColorHSV:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mStatusBarColorHSV:[F

    if-nez v4, :cond_9ba

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackStatusBar:I

    :goto_54f
    sget-boolean v4, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v4, :cond_5d1

    const-string/jumbo v4, "ImageWallpaper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "drawFrame() navigationBarRegion = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v18, v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v18, v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " x "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v18, v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v18, v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/systemui/ImageWallpaper$ExtractColor;->getColorHSV(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)[F

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNavigationBarColorHSV:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNavigationBarColorHSV:[F

    if-nez v4, :cond_a36

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackNavigationBar:I

    :cond_5d1
    :goto_5d1
    const-string/jumbo v4, "ImageWallpaper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "mNeedBlackText = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " mNeedBlackStatusBar = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackStatusBar:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " mNeedBlackNavigationBar = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackNavigationBar:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "need_dark_font"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    if-ne v4, v0, :cond_64b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackStatusBar:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "need_dark_statusbar"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    if-eq v4, v0, :cond_ab2

    :cond_64b
    :goto_64b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v4}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v25, "need_dark_font"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v4}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v25, "need_dark_statusbar"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackStatusBar:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v4, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v4, :cond_697

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v4}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v25, "need_dark_navigationbar"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackNavigationBar:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_697
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x1000000

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/android/systemui/ImageWallpaper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6b4
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mGetBackgroundHSV:Z

    :cond_6b9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_77b

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getMobileKeyboardHeight()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    const-string/jumbo v4, "ImageWallpaper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "mMobileKeyboardHeight:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->-get1()Z

    move-result v4

    if-eqz v4, :cond_acf

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper;->-get5(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v4

    if-eqz v4, :cond_acf

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    int-to-double v0, v4

    move-wide/from16 v26, v0

    const-wide v28, 0x3ff199999999999aL    # 1.1

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v4, v0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    int-to-double v0, v4

    move-wide/from16 v26, v0

    const-wide v28, 0x3ff199999999999aL    # 1.1

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v4, v0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-double v0, v4

    move-wide/from16 v26, v0

    const-wide v28, 0x3ff199999999999aL    # 1.1

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3fb999999999999aL    # 0.1

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    add-int v4, v4, v25

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    move/from16 v25, v0

    mul-int v4, v4, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    move/from16 v25, v0

    div-int v4, v4, v25

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    :goto_771
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    :cond_77b
    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v4, v4, v25

    int-to-float v0, v14

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v25

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v0, v25

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    move/from16 v25, v0

    mul-float v4, v4, v25

    float-to-int v4, v4

    sub-int v6, v16, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    move/from16 v25, v0

    mul-float v4, v4, v25

    float-to-int v4, v4

    sub-int v7, v14, v4

    div-int/lit8 v8, v6, 0x2

    div-int/lit8 v9, v7, 0x2

    const-string/jumbo v4, "ImageWallpaper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "mScale="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " availw="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " availh="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " xPixels= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " yPixels= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v11, v16, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v10, v14, v4

    if-gez v11, :cond_860

    int-to-float v4, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    sub-float v25, v25, v26

    mul-float v4, v4, v25

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v4, v4, v25

    float-to-int v4, v4

    add-int/2addr v8, v4

    :cond_860
    if-gez v10, :cond_875

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    sub-float v25, v25, v26

    mul-float v4, v4, v25

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v4, v4, v25

    float-to-int v4, v4

    add-int/2addr v9, v4

    :cond_875
    const-string/jumbo v4, "ImageWallpaper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "availwUnscaled="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "  availhUnscaled="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " xPixels= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " yPixels= "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    if-eqz v22, :cond_8fe

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    const-string/jumbo v4, "ImageWallpaper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "mLastSurfaceWidth:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " mLastSurfaceHeight:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8fe
    if-nez v20, :cond_b01

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    if-ne v8, v4, :cond_b01

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    if-ne v9, v4, :cond_b01

    const-string/jumbo v4, "ImageWallpaper"

    const-string/jumbo v25, "Suppressed drawFrame since the image has not actually moved an integral number of pixels."

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_917
    .catchall {:try_start_404 .. :try_end_917} :catchall_3e4

    const-wide/16 v26, 0x8

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v4, v4, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_92c

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    :cond_92c
    return-void

    :cond_92d
    const/4 v4, 0x1

    :try_start_92e
    new-array v0, v4, [Landroid/graphics/Rect;

    move-object/from16 v24, v0

    const/4 v4, 0x1

    new-array v0, v4, [Landroid/graphics/Rect;

    move-object/from16 v21, v0

    const/4 v4, 0x1

    new-array v0, v4, [Landroid/graphics/Rect;

    move-object/from16 v18, v0

    goto/16 :goto_439

    :cond_93e
    const-string/jumbo v4, "ImageWallpaper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Whole Area Hue="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperColorHSV:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", Saturation="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperColorHSV:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", Brightness="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperColorHSV:[F

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperColorHSV:[F

    const/16 v25, 0x1

    aget v4, v4, v25

    const v25, 0x3e99999a    # 0.3f

    cmpg-float v4, v4, v25

    if-gez v4, :cond_9b3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperColorHSV:[F

    const/16 v25, 0x2

    aget v4, v4, v25

    const v25, 0x3f6147ae    # 0.88f

    cmpl-float v4, v4, v25

    if-ltz v4, :cond_9b3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    goto/16 :goto_4ca

    :cond_9b3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    goto/16 :goto_4ca

    :cond_9ba
    const-string/jumbo v4, "ImageWallpaper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "StatusBar Area Hue="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mStatusBarColorHSV:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", Saturation="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mStatusBarColorHSV:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", Brightness="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mStatusBarColorHSV:[F

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mStatusBarColorHSV:[F

    const/16 v25, 0x1

    aget v4, v4, v25

    const v25, 0x3e99999a    # 0.3f

    cmpg-float v4, v4, v25

    if-gez v4, :cond_a2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mStatusBarColorHSV:[F

    const/16 v25, 0x2

    aget v4, v4, v25

    const v25, 0x3f6147ae    # 0.88f

    cmpl-float v4, v4, v25

    if-ltz v4, :cond_a2f

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackStatusBar:I

    goto/16 :goto_54f

    :cond_a2f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackStatusBar:I

    goto/16 :goto_54f

    :cond_a36
    const-string/jumbo v4, "ImageWallpaper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "NavigationBar Area Hue="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNavigationBarColorHSV:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", Saturation="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNavigationBarColorHSV:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", Brightness="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNavigationBarColorHSV:[F

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNavigationBarColorHSV:[F

    const/16 v25, 0x1

    aget v4, v4, v25

    const v25, 0x3e99999a    # 0.3f

    cmpg-float v4, v4, v25

    if-gez v4, :cond_aab

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNavigationBarColorHSV:[F

    const/16 v25, 0x2

    aget v4, v4, v25

    const v25, 0x3f6147ae    # 0.88f

    cmpl-float v4, v4, v25

    if-ltz v4, :cond_aab

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackNavigationBar:I

    goto/16 :goto_5d1

    :cond_aab
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackNavigationBar:I

    goto/16 :goto_5d1

    :cond_ab2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackNavigationBar:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "need_dark_navigationbar"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    if-eq v4, v0, :cond_6b4

    goto/16 :goto_64b

    :cond_acf
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    move/from16 v25, v0

    mul-int v4, v4, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    move/from16 v25, v0

    div-int v4, v4, v25

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    goto/16 :goto_771

    :cond_b01
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-le v4, v0, :cond_b57

    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_b57

    :cond_b1c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z

    :cond_b21
    :goto_b21
    const-string/jumbo v4, "ImageWallpaper"

    const-string/jumbo v25, "Redrawing wallpaper"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v4, v4, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    if-eqz v4, :cond_b9d

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithOpenGL(Landroid/view/SurfaceHolder;IIII)Z

    move-result v4

    if-nez v4, :cond_b41

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V
    :try_end_b41
    .catchall {:try_start_92e .. :try_end_b41} :catchall_3e4

    :cond_b41
    :goto_b41
    const-wide/16 v26, 0x8

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v4, v4, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b56

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    :cond_b56
    return-void

    :cond_b57
    :try_start_b57
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v4, v0, :cond_b6a

    const/4 v4, 0x2

    move/from16 v0, v19

    if-eq v0, v4, :cond_b1c

    :cond_b6a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v4, v0, :cond_b21

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v4, v0, :cond_b21

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    if-eqz v4, :cond_b21

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mForceDraw:Z

    const-string/jumbo v4, "ImageWallpaper"

    const-string/jumbo v25, "initialize mForceDraw = false"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b21

    :cond_b9d
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V
    :try_end_ba2
    .catchall {:try_start_b57 .. :try_end_ba2} :catchall_3e4

    goto :goto_b41
.end method

.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "ImageWallpaper.DrawableEngine:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mBackground="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " mBackgroundWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mBackgroundHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mLastRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mLastSurfaceWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mLastSurfaceHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " mYOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mOffsetsChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mLastXTranslation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mLastYTranslation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mScale="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mLastRequestedWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mLastRequestedHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " DisplayInfo at last updateSurfaceSize:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "  rotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRotationAtLastSurfaceSizeUpdate:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "  width="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayWidthAtLastSurfaceSizeUpdate:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "  height="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayHeightAtLastSurfaceSizeUpdate:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method getImageRegionForDisplay(Landroid/graphics/Rect;Landroid/graphics/Rect;IIIII)V
    .registers 31

    if-eqz p4, :cond_4

    if-nez p3, :cond_38

    :cond_4
    const-string/jumbo v19, "ImageWallpaper"

    const-string/jumbo v20, "Investigate this::Unable to get viewRatio as viewHeight is zero"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eqz v8, :cond_50

    if-nez v6, :cond_84

    :cond_50
    const-string/jumbo v19, "ImageWallpaper"

    const-string/jumbo v20, "Investigate this::Unable to get imageRatio as imageHeight is zero"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_84
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v17, v19, v20

    int-to-float v0, v8

    move/from16 v19, v0

    int-to-float v0, v6

    move/from16 v20, v0

    div-float v7, v19, v20

    cmpg-float v19, v17, v7

    if-gtz v19, :cond_112

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v6

    move/from16 v20, v0

    div-float v18, v19, v20

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v18

    move/from16 v0, v19

    float-to-int v15, v0

    sub-int v19, v8, v15

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v11

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v18

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p5, v0

    div-int/lit8 p5, p5, 0x2

    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v18

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p6, v0

    div-int/lit8 p6, p6, 0x2

    add-int v9, p5, v11

    move/from16 v16, p6

    add-int v19, v15, v11

    add-int/lit8 v19, v19, -0x1

    sub-int v13, v19, p5

    add-int/lit8 v19, v6, -0x1

    sub-int v5, v19, p6

    sub-int v10, v6, p7

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-virtual {v0, v9, v1, v13, v5}, Landroid/graphics/Rect;->set(IIII)V

    sget-boolean v19, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v19, :cond_fc

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10, v13, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_fb
    return-void

    :cond_fc
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_fb

    :cond_112
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    div-float v18, v19, v20

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v18

    move/from16 v0, v19

    float-to-int v14, v0

    sub-int v19, v6, v14

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v12

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v18

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p5, v0

    div-int/lit8 p5, p5, 0x2

    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v18

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p6, v0

    div-int/lit8 p6, p6, 0x2

    move/from16 v9, p5

    add-int v16, p6, v12

    add-int/lit8 v19, v8, -0x1

    sub-int v13, v19, p5

    add-int v19, v14, v12

    add-int/lit8 v19, v19, -0x1

    sub-int v5, v19, p6

    sub-int v10, v6, p7

    move-object/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v13, v5}, Landroid/graphics/Rect;->set(IIII)V

    sget-boolean v19, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v19, :cond_176

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v0, v1, v10, v13, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_fb

    :cond_176
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_fb
.end method

.method getImageRegionforStatusBar(Landroid/graphics/Rect;IIII)V
    .registers 27

    if-eqz p3, :cond_4

    if-nez p2, :cond_23

    :cond_4
    const-string/jumbo v17, "ImageWallpaper"

    const-string/jumbo v18, "Investigate this::Unable to get viewRatio as viewHeight is zero"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eqz v7, :cond_3b

    if-nez v5, :cond_5a

    :cond_3b
    const-string/jumbo v17, "ImageWallpaper"

    const-string/jumbo v18, "Investigate this::Unable to get imageRatio as imageHeight is zero"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_5a
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v15, v17, v18

    int-to-float v0, v7

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    div-float v6, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/ImageWallpaper;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v17, 0x10502b0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v10, v0

    div-int/lit8 v17, p5, 0x2

    add-int v14, v10, v17

    cmpg-float v17, v15, v6

    if-gtz v17, :cond_d3

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    div-float v16, v17, v18

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v16

    move/from16 v0, v17

    float-to-int v13, v0

    sub-int v17, v7, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v0, v14

    move/from16 v17, v0

    div-float v17, v17, v16

    move/from16 v0, v17

    float-to-int v14, v0

    int-to-float v0, v10

    move/from16 v17, v0

    div-float v17, v17, v16

    move/from16 v0, v17

    float-to-int v10, v0

    add-int v17, v13, v8

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v8, v1, v2, v14}, Landroid/graphics/Rect;->set(IIII)V

    :goto_d2
    return-void

    :cond_d3
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v7

    move/from16 v18, v0

    div-float v16, v17, v18

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v16

    move/from16 v0, v17

    float-to-int v12, v0

    sub-int v17, v5, v12

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v0, v14

    move/from16 v17, v0

    div-float v17, v17, v16

    move/from16 v0, v17

    float-to-int v14, v0

    add-int/lit8 v17, v7, -0x1

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v9, v2, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_d2
.end method

.method public getMobileKeyboardHeight()I
    .registers 5

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    const/4 v2, -0x1

    return v2

    :cond_b
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method

.method public isMobileKeyboardCovered()Z
    .registers 5

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v3, :cond_19

    const-string/jumbo v1, "ImageWallpaper"

    const-string/jumbo v2, "MOBILEKEYBOARD_COVERED_YES"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8

    const-string/jumbo v3, "ImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onConfigurationChanged:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v1, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_54

    if-ge v1, v0, :cond_54

    const-string/jumbo v3, "ImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onConfigurationChanged deviceWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " deviceHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    :cond_54
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v1, "ImageWallpaper"

    const-string/jumbo v4, "DrawableEngine:onCreate"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->-get1()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "wallpaper_tilt_status"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_9b

    move v1, v2

    :goto_26
    invoke-static {v4, v1}, Lcom/android/systemui/ImageWallpaper;->-set4(Lcom/android/systemui/ImageWallpaper;Z)Z

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wallpaper_tilt_status"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperTiltSettingChanged:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3b
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperType:I

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperTypeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {p0, v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->setOffsetNotificationsEnabled(Z)V

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastDeviceHeight:I

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastDeviceWidth:I

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const-string/jumbo v3, "display"

    invoke-virtual {v1, v3}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-static {v2, v1}, Lcom/android/systemui/ImageWallpaper;->-set0(Lcom/android/systemui/ImageWallpaper;Landroid/hardware/display/DisplayManager;)Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->-get0(Lcom/android/systemui/ImageWallpaper;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void

    :cond_9b
    move v1, v3

    goto :goto_26
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->-get1()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperTiltSettingChanged:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mWallpaperTypeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->-get0(Lcom/android/systemui/ImageWallpaper;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .registers 10

    const-string/jumbo v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOffsetsChanged: xOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", yOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", xOffsetStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", yOffsetStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", xPixels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", yPixels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_5d

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_90

    :cond_5d
    const-string/jumbo v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Offsets changed to ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    iput p2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    :cond_90
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8

    const-string/jumbo v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceChanged: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    const-string/jumbo v0, "ImageWallpaper"

    const-string/jumbo v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceValid:Z

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 5

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    const-string/jumbo v0, "ImageWallpaper"

    const-string/jumbo v1, "onSurfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mSurfaceValid:Z

    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 4

    const-string/jumbo v0, "ImageWallpaper"

    const-string/jumbo v1, "onSurfaceRedrawNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 5

    const-string/jumbo v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVisibilityChanged: mVisible, visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    if-eq v0, p1, :cond_64

    const-string/jumbo v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Visibility changed to visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    if-eqz p1, :cond_64

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->-get4(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string/jumbo v0, "ImageWallpaper"

    const-string/jumbo v1, "onVisibilityChanged(): Tilt status changed / call drawFrame with forceUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame(Z)V

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/ImageWallpaper;->-set3(Lcom/android/systemui/ImageWallpaper;Z)Z

    :cond_64
    :goto_64
    return-void

    :cond_65
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    goto :goto_64
.end method

.method public trimMemory(I)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_2d

    const/16 v0, 0xf

    if-gt p1, v0, :cond_2d

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "ImageWallpaper"

    const-string/jumbo v1, "trimMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->unloadWallpaper(Z)V

    :cond_2d
    return-void
.end method

.method updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z
    .registers 13

    const/4 v7, 0x0

    const/4 v2, 0x1

    iget v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    if-lez v6, :cond_a

    iget v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    if-gtz v6, :cond_28

    :cond_a
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v6, v6, Lcom/android/systemui/ImageWallpaper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v6

    if-eqz v6, :cond_118

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v6, v6, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    invoke-direct {p0, p3, v7}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadWallpaper(ZZ)V

    :goto_1e
    const-string/jumbo v6, "ImageWallpaper"

    const-string/jumbo v7, "Reloading, redoing updateSurfaceSize later."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_28
    iget v1, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v0, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    sget-boolean v6, Lcom/android/systemui/ImageWallpaper;->WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

    if-eqz v6, :cond_4a

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v6, v6, Lcom/android/systemui/ImageWallpaper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4a

    if-le v1, v0, :cond_4a

    move v5, v1

    move v1, v0

    move v0, v5

    const-string/jumbo v6, "ImageWallpaper"

    const-string/jumbo v7, "Chnage value displayWidth and displayHeight"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    iget v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-string/jumbo v6, "ImageWallpaper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deviceWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " deviceHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " displayWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " displayHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " backgroundWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " backgroundHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " surfaceWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " surfaceHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " tiltEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v8}, Lcom/android/systemui/ImageWallpaper;->-get5(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " lastRequestedWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " lastRequestedHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->-get1()Z

    move-result v6

    if-eqz v6, :cond_110

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v6}, Lcom/android/systemui/ImageWallpaper;->-get5(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v6

    if-eqz v6, :cond_110

    div-int/lit8 v6, v1, 0xa

    add-int/2addr v6, v1

    if-ge v4, v6, :cond_107

    div-int/lit8 v6, v1, 0xa

    add-int v4, v1, v6

    :cond_107
    div-int/lit8 v6, v0, 0xa

    add-int/2addr v6, v0

    if-ge v3, v6, :cond_110

    div-int/lit8 v6, v0, 0xa

    add-int v3, v0, v6

    :cond_110
    invoke-interface {p1, v4, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iput v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    return v2

    :cond_118
    const/4 v6, 0x1

    invoke-direct {p0, p3, v6}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadWallpaper(ZZ)V

    goto/16 :goto_1e
.end method
