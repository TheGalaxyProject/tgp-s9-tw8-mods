.class public Lcom/android/systemui/wallpaper/WallpaperUtils;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;,
        Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;
    }
.end annotation


# static fields
.field private static mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

.field private static mCroppedScale:F

.field private static mCurClockType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

.field private static mIsAdaptiveColorMode:Z

.field private static mIsDesktopMode:Z

.field private static mIsEmergencyMode:Z

.field private static mIsOperatorWallpaper:Z

.field private static mIsUltraPowerSavingMode:Z

.field private static mIsVerticalClock:Z

.field public static mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getInfinityWallpaperName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsDesktopMode:Z

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->None:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mCurClockType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsOperatorWallpaper:Z

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mCroppedScale:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfNotThemeTypeDirectly(Landroid/content/Context;)Z
    .registers 6

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string/jumbo v2, "WallpaperUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SWP type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2b

    :goto_2a
    return v1

    :cond_2b
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_d} :catch_cd
    .catchall {:try_start_3 .. :try_end_d} :catchall_c1

    :try_start_d
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_d0
    .catchall {:try_start_d .. :try_end_12} :catchall_c4

    const/4 v7, 0x0

    const/16 v9, 0x400

    :try_start_15
    new-array v0, v9, [B

    :goto_17
    const/4 v9, 0x0

    const/16 v11, 0x400

    invoke-virtual {v3, v0, v9, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_88

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_25} :catch_26
    .catchall {:try_start_15 .. :try_end_25} :catchall_c8

    goto :goto_17

    :catch_26
    move-exception v9

    move-object v5, v6

    move-object v2, v3

    :goto_29
    :try_start_29
    throw v9
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v10

    move-object v12, v10

    move-object v10, v9

    move-object v9, v12

    :goto_2e
    if-eqz v5, :cond_33

    :try_start_30
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_a9
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_3d

    :cond_33
    move-object v11, v10

    :cond_34
    :goto_34
    if-eqz v2, :cond_39

    :try_start_36
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_b3
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3d

    :cond_39
    move-object v10, v11

    :cond_3a
    :goto_3a
    if-eqz v10, :cond_be

    :try_start_3c
    throw v10
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception v1

    :goto_3e
    const-string/jumbo v9, "WallpaperUtils"

    const-string/jumbo v10, "Can not copy to file."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_bf

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/io/File;->setReadable(Z)Z

    move-result v8

    :goto_57
    const-string/jumbo v9, "WallpaperUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "copyFile() result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", origin = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", new = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_88
    if-eqz v6, :cond_8d

    :try_start_8a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8d} :catch_9a
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_96

    :cond_8d
    :goto_8d
    if-eqz v3, :cond_92

    :try_start_8f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_92} :catch_9c
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_96

    :cond_92
    move-object v9, v10

    :cond_93
    :goto_93
    if-eqz v9, :cond_a6

    :try_start_95
    throw v9

    :catch_96
    move-exception v1

    move-object v5, v6

    move-object v2, v3

    goto :goto_3e

    :catch_9a
    move-exception v10

    goto :goto_8d

    :catch_9c
    move-exception v9

    if-eqz v10, :cond_93

    if-eq v10, v9, :cond_92

    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_a4} :catch_96

    move-object v9, v10

    goto :goto_93

    :cond_a6
    move-object v5, v6

    move-object v2, v3

    goto :goto_47

    :catch_a9
    move-exception v11

    if-eqz v10, :cond_34

    if-eq v10, v11, :cond_33

    :try_start_ae
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v11, v10

    goto :goto_34

    :catch_b3
    move-exception v10

    if-eqz v11, :cond_3a

    if-eq v11, v10, :cond_39

    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v10, v11

    goto/16 :goto_3a

    :cond_be
    throw v9
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_bf} :catch_3d

    :cond_bf
    const/4 v8, 0x0

    goto :goto_57

    :catchall_c1
    move-exception v9

    goto/16 :goto_2e

    :catchall_c4
    move-exception v9

    move-object v2, v3

    goto/16 :goto_2e

    :catchall_c8
    move-exception v9

    move-object v5, v6

    move-object v2, v3

    goto/16 :goto_2e

    :catch_cd
    move-exception v9

    goto/16 :goto_29

    :catch_d0
    move-exception v9

    move-object v2, v3

    goto/16 :goto_29
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v5, 0x0

    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_c

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "WallpaperUtils : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  Emergency mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  UltraPowerSavingMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  ExternalLiveWallpaper: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isExternalLiveWallpaper:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  NotKWPType: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isNotSupportedKWPType:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  KWPType: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isSupportedKWPType:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  DeXMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsDesktopMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_6c

    const-string/jumbo v0, "  InfinityWallpaper: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isInfinityWallpaper:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  InfinityName: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->infinityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6c
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    if-eqz v0, :cond_c0

    const-string/jumbo v0, "  main color: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v0, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  secondary color: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v0, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  main bg color: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v0, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_main:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  secondary bg color: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v0, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_secondary:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  bottom color: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v0, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bottom_area:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :goto_b1
    const-string/jumbo v0, "  mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_c0
    const-string/jumbo v0, "  colors: empty"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_b1
.end method

.method public static getAdaptiveColorMode()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    return v0
.end method

.method public static getAdaptiveColorValue(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .registers 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSupportAdaptiveColor(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_72

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    if-eqz v0, :cond_68

    const-string/jumbo v0, "WallpaperUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set color main="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v2, v2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", secondary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v2, v2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bg_main="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v2, v2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_main:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bg_secondary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v2, v2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_secondary:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v2, v2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bottom_area:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    return-object v0

    :cond_68
    const-string/jumbo v0, "WallpaperUtils"

    const-string/jumbo v1, "getAdaptiveColorValue color is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    :cond_72
    return-object v1
.end method

.method public static getCroppedScaled()F
    .registers 1

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mCroppedScale:F

    return v0
.end method

.method public static getDefaultColorCodeFromResource(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "black"

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public static getEmergencyMode()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    return v0
.end method

.method public static getFileExt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, ""

    return-object v0

    :cond_a
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInfinityWallpaperName(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/WallpaperManager;->parseInfinityColorInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    return-object v0

    :cond_20
    return-object v5
.end method

.method public static getOperatorWallpaper()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsOperatorWallpaper:Z

    return v0
.end method

.method public static getOutputVideoResolution(Ljava/lang/String;)Landroid/graphics/Point;
    .registers 13

    const/16 v9, 0x280

    const/16 v8, 0x1e0

    const/4 v10, 0x0

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v9, v8}, Landroid/graphics/Point;-><init>(II)V

    iput v9, v6, Landroid/graphics/Point;->x:I

    iput v8, v6, Landroid/graphics/Point;->y:I

    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_13
    invoke-virtual {v5, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v8, 0x12

    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x13

    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Landroid/graphics/Point;->y:I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2e} :catch_b1
    .catchall {:try_start_13 .. :try_end_2e} :catchall_cc

    :try_start_2e
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_a6

    :goto_31
    const/4 v3, 0x0

    const/4 v8, 0x2

    invoke-static {v8, v10}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->getRemainedVideoCapacity()I

    move-result v4

    iget v8, v6, Landroid/graphics/Point;->x:I

    if-lez v8, :cond_dc

    iget v8, v6, Landroid/graphics/Point;->y:I

    if-lez v8, :cond_dc

    int-to-float v8, v4

    iget v9, v6, Landroid/graphics/Point;->x:I

    iget v10, v6, Landroid/graphics/Point;->y:I

    mul-int/2addr v9, v10

    int-to-float v9, v9

    div-float v3, v8, v9

    :goto_4c
    const-string/jumbo v8, "WallpaperUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "remained size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", video ratio : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v8, v3

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_8d

    float-to-double v8, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_8d

    iget v8, v6, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iput v8, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iput v8, v6, Landroid/graphics/Point;->y:I

    :cond_8d
    iget v8, v6, Landroid/graphics/Point;->x:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_99

    iget v8, v6, Landroid/graphics/Point;->x:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v6, Landroid/graphics/Point;->x:I

    :cond_99
    iget v8, v6, Landroid/graphics/Point;->y:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_a5

    iget v8, v6, Landroid/graphics/Point;->y:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v6, Landroid/graphics/Point;->y:I

    :cond_a5
    return-object v6

    :catch_a6
    move-exception v1

    const-string/jumbo v8, "WallpaperUtils"

    const-string/jumbo v9, "Need to check about Exception in getOuputVideoResolution"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :catch_b1
    move-exception v1

    :try_start_b2
    const-string/jumbo v8, "WallpaperUtils"

    const-string/jumbo v9, "Need to check about Exception in getOuputVideoResolution"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_cc

    :try_start_bb
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_c0

    goto/16 :goto_31

    :catch_c0
    move-exception v1

    const-string/jumbo v8, "WallpaperUtils"

    const-string/jumbo v9, "Need to check about Exception in getOuputVideoResolution"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :catchall_cc
    move-exception v8

    :try_start_cd
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_d1

    :goto_d0
    throw v8

    :catch_d1
    move-exception v1

    const-string/jumbo v9, "WallpaperUtils"

    const-string/jumbo v10, "Need to check about Exception in getOuputVideoResolution"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    :cond_dc
    const-string/jumbo v8, "WallpaperUtils"

    const-string/jumbo v9, "Can\'t Trim videofile"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getUltraPowerSavingMode()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    return v0
.end method

.method public static getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 11

    const/4 v7, 0x0

    const-string/jumbo v4, "WallpaperUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getVideoFDFromPackage() pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_23

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_23
    return-object v7

    :cond_24
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_26
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_29} :catch_36

    move-result-object v3

    :goto_2a
    if-nez v3, :cond_41

    const-string/jumbo v4, "WallpaperUtils"

    const-string/jumbo v5, "getVideoFDFromPackage() otherContext is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :catch_36
    move-exception v1

    const-string/jumbo v4, "WallpaperUtils"

    const-string/jumbo v5, "Can not found package name"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_41
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-nez v0, :cond_51

    const-string/jumbo v4, "WallpaperUtils"

    const-string/jumbo v5, "getVideoFDFromPackage() assetManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_51
    :try_start_51
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_56

    move-result-object v4

    return-object v4

    :catch_56
    move-exception v2

    const-string/jumbo v4, "WallpaperUtils"

    const-string/jumbo v5, "Can not access to openFd"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method public static isChangedInfinityName(Landroid/content/Context;)Z
    .registers 6

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getInfinityWallpaperName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WallpaperUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "infinity name previous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-object v3, v3, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->infinityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->infinityName:Ljava/lang/String;

    if-eqz v1, :cond_36

    if-nez v0, :cond_37

    :cond_36
    return v4

    :cond_37
    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->infinityName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    const/4 v1, 0x0

    return v1

    :cond_43
    return v4
.end method

.method public static isDexMode()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsDesktopMode:Z

    return v0
.end method

.method public static isExternalLiveWallpaper(Landroid/content/Context;)Z
    .registers 8

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    if-eqz v2, :cond_37

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lockscreen_wallpaper"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_13
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_13} :catch_2c

    move-result v3

    if-nez v3, :cond_2a

    const/4 v1, 0x1

    :goto_17
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->isExternalLiveWallpaper()Z

    move-result v3

    if-eqz v3, :cond_37

    if-eqz v1, :cond_37

    const-string/jumbo v3, "WallpaperUtils"

    const-string/jumbo v4, "external live wallpaper is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :cond_2a
    const/4 v1, 0x0

    goto :goto_17

    :catch_2c
    move-exception v0

    const-string/jumbo v3, "WallpaperUtils"

    const-string/jumbo v4, "Setting value about lockscreen_wallpaper not found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_37
    return v6
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isLockType(I)Z
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_b

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_d

    :cond_b
    if-ne p0, v2, :cond_e

    :cond_d
    return v2

    :cond_e
    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    const/4 v0, 0x4

    if-eq p0, v0, :cond_d

    if-eqz p0, :cond_d

    return v1
.end method

.method public static isSupportAdaptiveColor(Landroid/content/Context;)Z
    .registers 5

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    const-string/jumbo v1, "WallpaperUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", emergency="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", upsm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    if-eqz v1, :cond_8b

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isExternalLiveWallpaper:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8b

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8b

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8b

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_8b

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsDesktopMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8b

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isNotSupportedKWPType:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8b

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isInfinityWallpaper:Z

    if-nez v1, :cond_89

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isSupportedKWPType:Z

    if-eqz v1, :cond_8b

    :cond_89
    const/4 v1, 0x1

    return v1

    :cond_8b
    const/4 v1, 0x0

    return v1
.end method

.method public static isVerticalClock()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsVerticalClock:Z

    return v0
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public static setAdaptiveColorMode(Landroid/content/Context;Z)V
    .registers 6

    const/4 v1, 0x0

    sput-boolean p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    const-string/jumbo v0, "lockscreen_pref"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "9010"

    if-eqz p1, :cond_36

    const/4 v0, 0x1

    :goto_14
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_35

    const-string/jumbo v0, "lockscreen_pref"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "9009"

    const-string/jumbo v2, "Adaptive color (Default)"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_35
    return-void

    :cond_36
    move v0, v1

    goto :goto_14
.end method

.method protected static setAdaptiveColors(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .registers 1

    sput-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    return-void
.end method

.method public static setCroppedScaled(F)V
    .registers 1

    sput p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mCroppedScale:F

    return-void
.end method

.method public static setDexMode(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsDesktopMode:Z

    return-void
.end method

.method public static setEmergencyMode(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    return-void
.end method

.method public static setOperatorWallpaper(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsOperatorWallpaper:Z

    return-void
.end method

.method public static setUltraPowerSavingMode(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    return-void
.end method
