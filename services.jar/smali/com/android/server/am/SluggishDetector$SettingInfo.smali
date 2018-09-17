.class final Lcom/android/server/am/SluggishDetector$SettingInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingInfo"
.end annotation


# static fields
.field private static final PERFORMANCE_MODE_URI_STR:Ljava/lang/String; = "sem_perfomance_mode"

.field private static final POWER_SAVING_MODE_URI_STR:Ljava/lang/String; = "low_power"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Landroid/content/ContentResolver;
    .registers 2

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$SettingInfo;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$SettingInfo;->getInstalledPackageCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/ContentResolver;)I
    .registers 2

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$SettingInfo;->getPerformanceMode(Landroid/content/ContentResolver;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/ContentResolver;)I
    .registers 2

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$SettingInfo;->getPowerSavingMode(Landroid/content/ContentResolver;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/server/am/SluggishDetector$SettingInfo;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/am/SluggishDetector$SettingInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$SettingInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method private static getInstalledPackageCount(Landroid/content/Context;)I
    .registers 6

    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-result v1

    :goto_f
    return v1

    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method private static getPerformanceMode(Landroid/content/ContentResolver;)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p0, :cond_b

    const-string/jumbo v1, "sem_perfomance_mode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_b
    return v0
.end method

.method private static getPowerSavingMode(Landroid/content/ContentResolver;)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p0, :cond_b

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_b
    return v0
.end method

.method private static getResolution(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 v3, -0x1

    const/4 v1, -0x1

    :try_start_2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_38

    :goto_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :catch_38
    move-exception v2

    goto :goto_1f
.end method
