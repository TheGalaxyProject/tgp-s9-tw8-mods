.class public Lcom/samsung/android/settings/display/PocBalanceProgressActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "PocBalanceProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;,
        Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;,
        Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;,
        Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;
    }
.end annotation


# static fields
.field private static COMMAND_FILE:Ljava/io/File;

.field private static final RECOVERY_DIR:Ljava/io/File;


# instance fields
.field private bIsCallFirst:Z

.field private bIsForceWatingForShortModel:Z

.field private backgroundThread:Ljava/lang/Runnable;

.field currentPos:I

.field private isPocRunning:Z

.field public mEstimatedTime:J

.field public mIsProgressStop:Z

.field private mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mPercentageTextView:Landroid/widget/TextView;

.field private mPocCancelDialog:Landroid/app/AlertDialog;

.field private final mPocObserver:Landroid/database/ContentObserver;

.field private mPocProgressStatus:I

.field private mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

.field private mPocWasStoppedDialog:Landroid/app/AlertDialog;

.field private mPocWriteValue:I

.field mProgressBar:Landroid/widget/ProgressBar;

.field private volatile mProgressBarThread:Ljava/lang/Thread;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field pgBarHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsForceWatingForShortModel:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPercentageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocProgressStatus:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWriteValue:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocProgressStatus:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->insertProgressReadErrorLog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->removeEfsPocErrorOccurredOnBoot()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->stopPoc()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->writeCommandForRecovery()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->writeEfsApplyVersion(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->RECOVERY_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->COMMAND_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    iput v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocProgressStatus:I

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsForceWatingForShortModel:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsCallFirst:Z

    iput v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWriteValue:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mEstimatedTime:J

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mIsProgressStop:Z

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->backgroundThread:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->pgBarHandler:Landroid/os/Handler;

    return-void
.end method

.method private blockHWkey()V
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_13
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x43a

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0xa4

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x18

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x1a

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x24

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x25

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0xbb

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_7f} :catch_80

    :goto_7f
    return-void

    :catch_80
    move-exception v0

    goto :goto_7f
.end method

.method private initUI()V
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v4, 0x7f0a063c

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mEstimatedTime:J

    const-wide/32 v6, 0x668a0

    cmp-long v4, v4, v6

    if-nez v4, :cond_54

    iput-boolean v8, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsForceWatingForShortModel:Z

    :goto_1d
    const v4, 0x7f1214ab

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3c
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocUserIndexTemp(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocImageFromArray(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_53
    return-void

    :cond_54
    iput-boolean v9, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsForceWatingForShortModel:Z

    goto :goto_1d
.end method

.method private insertProgressReadErrorLog()V
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0439

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getMetricsCategory()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void
.end method

.method private removeEfsPocErrorOccurredOnBoot()V
    .registers 6

    const-string/jumbo v2, "/efs/etc/poc/failcount"

    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_11
    const-string/jumbo v3, "PocBalanceProgressActivity"

    const-string/jumbo v4, "[stpoc] removeEfsPocErrorOccurredOnBoot"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method private showPocCancelDialog()V
    .registers 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_e

    return-void

    :cond_e
    iput-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$5;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    new-instance v2, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$6;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$7;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1214b6

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1214b7

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120548

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showPocWasStoppedDialog()V
    .registers 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_e

    return-void

    :cond_e
    iput-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0439

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getMetricsCategory()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v1, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$8;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$9;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1214b5

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1214b4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120608

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startPoc()V
    .registers 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getUserPocValue(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWriteValue:I

    const-string/jumbo v0, "PocBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] startPoc, previous state : Running - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "PocBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] startPoc, reqeust userPoc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWriteValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    if-nez v0, :cond_6c

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsCallFirst:Z

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipPOC(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6c

    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    new-array v1, v4, [Ljava/lang/Integer;

    iget v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWriteValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_6c
    iput-boolean v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    const-string/jumbo v0, "PocBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] startPoc, isPocRunning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopPoc()V
    .registers 4

    const-string/jumbo v0, "PocBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] stopPoc, previous state : Running - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipPOC(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->stopReadPoc(Lcom/samsung/android/hardware/display/SemMdnieManager;)V

    :cond_2f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    return-void
.end method

.method private writeCommandForRecovery()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->COMMAND_FILE:Ljava/io/File;

    const-string/jumbo v3, "rwd"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v0, "--copy_poc_file"

    :try_start_d
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    const-string/jumbo v2, "PocBalanceProgressActivity"

    const-string/jumbo v3, "[stpoc] !@RecoverySystem before fsync syscall!!"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    const-string/jumbo v2, "PocBalanceProgressActivity"

    const-string/jumbo v3, "[stpoc] !@RecoverySystem after fsync syscall!!"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_3e

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    sget-object v2, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string/jumbo v2, "PocBalanceProgressActivity"

    const-string/jumbo v3, "[stpoc] COMMAND_FILE is already exist!!"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    return-void

    :catchall_3e
    move-exception v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v2
.end method

.method private writeEfsApplyVersion(II)V
    .registers 12

    const-string/jumbo v4, "/efs/FactoryApp/apply_version"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    :try_start_24
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_32

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_32
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_37} :catch_46
    .catchall {:try_start_24 .. :try_end_37} :catchall_55

    :try_start_37
    invoke-virtual {v6, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_64
    .catchall {:try_start_37 .. :try_end_3a} :catchall_61

    if-eqz v6, :cond_3f

    :try_start_3c
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_41

    :cond_3f
    :goto_3f
    move-object v5, v6

    :cond_40
    :goto_40
    return-void

    :catch_41
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    :catch_46
    move-exception v2

    :goto_47
    :try_start_47
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_55

    if-eqz v5, :cond_40

    :try_start_4c
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_40

    :catch_50
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    :catchall_55
    move-exception v7

    :goto_56
    if-eqz v5, :cond_5b

    :try_start_58
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    :cond_5b
    :goto_5b
    throw v7

    :catch_5c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    :catchall_61
    move-exception v7

    move-object v5, v6

    goto :goto_56

    :catch_64
    move-exception v2

    move-object v5, v6

    goto :goto_47
.end method


# virtual methods
.method public disableStatusBar()V
    .registers 7

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_f

    const-string/jumbo v3, "statusbar"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_f
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v3, :cond_4e

    const-string/jumbo v3, "PocBalanceProgressActivity"

    const-string/jumbo v4, "[stpoc] disableNotifications - mStatusBarManager is not null"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x3210000

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/high16 v3, 0x3210000

    if-eqz v3, :cond_44

    const-string/jumbo v3, "PocBalanceProgressActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[stpoc] disableNotifications disable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3, v2}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_43
    return-void

    :cond_44
    const-string/jumbo v3, "PocBalanceProgressActivity"

    const-string/jumbo v4, "[stpoc] disableNotifications already disabled"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_4e
    const-string/jumbo v3, "PocBalanceProgressActivity"

    const-string/jumbo v4, "[stpoc] disableNotifications - mStatusBarManager is null"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43
.end method

.method public enableStatusBar()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_14

    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] enableNotifications :  footerview"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_13
    return-void

    :cond_14
    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] enableNotifications - mStatusBarManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public declared-synchronized finishReadPoc()V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] finishReadPoc"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    if-eqz v0, :cond_22

    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] stop progressbar"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mIsProgressStop:Z

    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->restoreDefaultScreenBrightnessMode(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    monitor-exit p0

    return-void

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x1d25

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "mDNIe"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x1504

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v3, 0x7f0d01dc

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_poc_application_complete"

    invoke-static {v3, v4, v5, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->blockHWkey()V

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string/jumbo v3, "PocBalanceProgressActivity"

    const v4, 0x3000001a

    invoke-virtual {v1, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const v3, 0x7f0a0686

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const v3, 0x7f0a01d5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPercentageTextView:Landroid/widget/TextView;

    iput-boolean v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mIsProgressStop:Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocEstimatedTime(Lcom/samsung/android/hardware/display/SemMdnieManager;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mEstimatedTime:J

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->initUI()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->startProgressBar()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    sparse-switch p1, :sswitch_data_e

    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_8
    const/4 v0, 0x1

    return v0

    :sswitch_a
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->showPocCancelDialog()V

    goto :goto_3

    :sswitch_data_e
    .sparse-switch
        0x3 -> :sswitch_8
        0x4 -> :sswitch_a
        0x18 -> :sswitch_8
        0x19 -> :sswitch_8
        0x1a -> :sswitch_8
        0x24 -> :sswitch_8
        0x25 -> :sswitch_8
        0xa4 -> :sswitch_8
        0xbb -> :sswitch_8
        0x3e9 -> :sswitch_8
        0x43a -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onPause()V

    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] onPause()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->enableStatusBar()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1c
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->restoreDefaultScreenBrightnessMode(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->stopPocAndProgressThread()V

    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onResume()V

    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] onResume()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->disableStatusBar()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_poc_application_complete"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsCallFirst:Z

    if-eqz v0, :cond_34

    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] onResume() startPoc"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->startPoc()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsCallFirst:Z

    :goto_33
    return-void

    :cond_34
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->showPocWasStoppedDialog()V

    goto :goto_33
.end method

.method protected onStop()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onStop()V

    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] onStop()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->stopPocAndProgressThread()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1504

    if-eqz v0, :cond_11

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_11
    return-void
.end method

.method public declared-synchronized startProgressBar()V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->backgroundThread:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopPocAndProgressThread()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->stopPoc()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;->cancel(Z)Z

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_30

    :goto_19
    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2f

    const-string/jumbo v1, "PocBalanceProgressActivity"

    const-string/jumbo v2, "[stpoc] stop progressbar"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    iput-boolean v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mIsProgressStop:Z

    :cond_2f
    return-void

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "PocBalanceProgressActivity"

    const-string/jumbo v2, "[stpoc] no mPocObserver"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method
