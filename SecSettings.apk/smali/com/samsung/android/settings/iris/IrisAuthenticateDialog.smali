.class public Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;
.super Landroid/app/Dialog;
.source "IrisAuthenticateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;,
        Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;
    }
.end annotation


# instance fields
.field private linearlayout:Landroid/widget/LinearLayout;

.field private mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

.field private mBackupPasswordBtn:Landroid/widget/Button;

.field private mBackupPasswordStatusDB:I

.field private mCancelBtn:Landroid/widget/TextView;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field protected mContext:Landroid/content/Context;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIrisPreview:Landroid/widget/ImageView;

.field mIrisViewWidth:I

.field private mIsFromKnoxSetupWizard:Z

.field mResultValue:I

.field private mVerifyFingerBtn:Landroid/widget/Button;

.field private onIAuthenticateDialogEventListener:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->releaseIrisManager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const v2, 0x1030011

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    const/16 v2, 0x5a0

    iput v2, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisViewWidth:I

    iput-object v3, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    iput-object v3, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisPreview:Landroid/widget/ImageView;

    iput v4, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    iput-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIsFromKnoxSetupWizard:Z

    new-instance v2, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$1;-><init>(Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;)V

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->onIAuthenticateDialogEventListener:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    :cond_41
    return-void
.end method

.method private releaseIrisManager()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_c
    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-void
.end method

.method private startIrisConfirm()V
    .registers 9

    const/4 v1, 0x0

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisViewWidth:I

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisViewWidth:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x10

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisPreview:Landroid/widget/ImageView;

    const/4 v3, 0x0

    move-object v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V

    :cond_30
    return-void
.end method

.method private updateDialogButtonGUI()V
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v1, "IrisAuthenticateDialog"

    const-string/jumbo v2, "updateDialogButtonGUI"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    :goto_1a
    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancelBtn:Landroid/widget/TextView;

    const v2, 0x7f080361

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_24
    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->releaseIrisManager()V

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->onIAuthenticateDialogEventListener:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;->IrisAuthenticateDialogEvent(I)V

    return-void
.end method

.method public hideOtherButtons()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIsFromKnoxSetupWizard:Z

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->releaseIrisManager()V

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->releaseIrisManager()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancelBtn:Landroid/widget/TextView;

    if-ne p1, v0, :cond_e

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->dismiss()V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_20

    iget v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordStatusDB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    goto :goto_a

    :cond_1c
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    goto :goto_a

    :cond_20
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mVerifyFingerBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_a

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    goto :goto_a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    const v1, 0x7f0d0157

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->setContentView(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "biometrics_backup_type"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordStatusDB:I

    const v1, 0x7f0a00b1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisPreview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0a011c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->linearlayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a014f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancelBtn:Landroid/widget/TextView;

    const v1, 0x7f0a00c1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordBtn:Landroid/widget/Button;

    const v1, 0x7f0a0928

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mVerifyFingerBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->updateDialogButtonGUI()V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-nez v1, :cond_85

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->linearlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mVerifyFingerBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_85
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mVerifyFingerBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_a3

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_a3
    iget v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordStatusDB:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b6

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mBackupPasswordBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f120ac6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_b6
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mIrisViewWidth:I

    iput v4, p0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->mResultValue:I

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->startIrisConfirm()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
