.class public Lcom/android/systemui/screenshot/ScreenshotShareActivity;
.super Landroid/app/Activity;
.source "ScreenshotShareActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNotificationId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/systemui/screenshot/ScreenshotShareActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private doFinish()V
    .registers 3

    const v1, 0x7f1207d8

    invoke-static {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->mNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->finish()V

    return-void
.end method

.method private isPackageExist(Ljava/lang/String;)Z
    .registers 8

    const/4 v5, 0x0

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_6
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2c

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : return true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_2c
    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : return false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_45} :catch_46

    return v5

    :catch_46
    move-exception v0

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not valid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "NotificationId"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->mNotificationId:I

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "FilePath"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2e

    sget-object v5, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onCreate : imageFilePath is null."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->doFinish()V

    return-void

    :cond_2e
    sget-object v5, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "imageFilePath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5e

    sget-object v5, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onCreate : Item is not exist."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->doFinish()V

    return-void

    :cond_5e
    const-string/jumbo v5, "keyguard"

    invoke-virtual {p0, v5}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_7d

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/systemui/screenshot/ScreenshotShareActivity$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotShareActivity;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_7c
    return-void

    :cond_7d
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->startChooserActivity()V

    goto :goto_7c
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->setVisible(Z)V

    return-void
.end method

.method startChooserActivity()V
    .registers 8

    const/4 v6, 0x1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "image/jpeg"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "Uri"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.oneconnect"

    invoke-direct {p0, v3}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->isPackageExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    const-string/jumbo v3, "more_actions_quick_connect"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_34
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_43
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_46
    .catch Landroid/content/ActivityNotFoundException; {:try_start_43 .. :try_end_46} :catch_4a

    :goto_46
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotShareActivity;->finish()V

    return-void

    :catch_4a
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_46
.end method
