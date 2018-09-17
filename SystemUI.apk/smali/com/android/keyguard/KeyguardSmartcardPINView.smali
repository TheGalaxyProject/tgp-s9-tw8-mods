.class public Lcom/android/keyguard/KeyguardSmartcardPINView;
.super Lcom/android/keyguard/KeyguardPINView;
.source "KeyguardSmartcardPINView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;
    }
.end annotation


# static fields
.field private static FAILED_ATTEMPTS_BEFORE_TIMEOUT:I

.field private static mCurrent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/KeyguardSmartcardPINView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private mEntry:Ljava/lang/String;

.field private mSmartcardAuthProgress:Z

.field private mVerifyPasswordWithCACTask:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardSmartcardPINView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/ref/WeakReference;
    .registers 1

    sget-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardSmartcardPINView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardSmartcardPINView;ZLjava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSmartcardPINView;->verifyPasswordAndUnlock(ZLjava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x5

    sput v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->FAILED_ATTEMPTS_BEFORE_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSmartcardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "KeyguardSmartcardPINView"

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeyguardSmartcardPINView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private verifyPasswordAndUnlock(ZLjava/lang/String;I)V
    .registers 9

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyPasswordAndUnlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyPasswordAndUnlock : KeygueardSmartcardPINView object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_42
    if-eqz p1, :cond_5a

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "verifyPasswordAndUnlock: with mPendingLockCheck"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v2, Lcom/android/keyguard/KeyguardSmartcardPINView$1;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardSmartcardPINView$1;-><init>(Lcom/android/keyguard/KeyguardSmartcardPINView;I)V

    invoke-static {v1, p2, v0, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mPendingLockCheck:Landroid/os/AsyncTask;

    :goto_59
    return-void

    :cond_5a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_6b

    const v1, 0x7f120742

    if-ne p3, v1, :cond_6b

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v4, p3, v1}, Lcom/android/keyguard/KeyguardSmartcardPINView;->onPasswordChecked(IZIZ)V

    goto :goto_59

    :cond_6b
    invoke-virtual {p0, v0, v4, p3, v4}, Lcom/android/keyguard/KeyguardSmartcardPINView;->onPasswordChecked(IZIZ)V

    goto :goto_59
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .registers 2

    const v0, 0x7f0a03ba

    return v0
.end method

.method protected getSecurityViewId()I
    .registers 2

    const v0, 0x7f0a02b2

    return v0
.end method

.method public getWrongPasswordStringId()I
    .registers 2

    const v0, 0x7f12050d

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFinishInflate "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0, v2, v2}, Lcom/android/keyguard/KeyguardSmartcardPINView;->resetPasswordText(ZZ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f12073d

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V

    :cond_21
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    return-void
.end method

.method protected onPasswordChecked(IZIZ)V
    .registers 13

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPasswordChecked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_55

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, p1, p2, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v7, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :goto_3d
    invoke-virtual {p0, v7, v7}, Lcom/android/keyguard/KeyguardSmartcardPINView;->resetPasswordText(ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "verifyPasswordAndUnlock before setText to empty"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->getKeepScreenOn()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardSmartcardPINView;->setKeepScreenOn(Z)V

    :cond_54
    return-void

    :cond_55
    if-eqz p4, :cond_7f

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, p1, p2, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    sget v1, Lcom/android/keyguard/KeyguardSmartcardPINView;->FAILED_ATTEMPTS_BEFORE_TIMEOUT:I

    rem-int v1, v0, v1

    if-nez v1, :cond_75

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardSmartcardPINView;->handleAttemptLockout(J)V

    :cond_75
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->getWrongPasswordStringId()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_3d

    :cond_7f
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, p3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_3d
.end method

.method public onPause()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-eqz v0, :cond_15

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mVerifyPasswordWithCACTask:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->cancel(Z)Z

    :cond_15
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSmartcardPINView;->setKeepScreenOn(Z)V

    :cond_1e
    return-void
.end method

.method public onResume(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume mSmartcardAuthProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume if loop. mSmartcardAuthProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f12073d

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V

    :goto_46
    return-void

    :cond_47
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->onResume(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f120740

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_46
.end method

.method protected resetState()V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetState "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->setKeepScreenOn(Z)V

    :cond_12
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .registers 5

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "verifyPasswordAndUnlock: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Using Smartcard(CAC) authentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    invoke-direct {v0, p0, v2}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;-><init>(Lcom/android/keyguard/KeyguardSmartcardPINView;Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mVerifyPasswordWithCACTask:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mVerifyPasswordWithCACTask:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mEntry:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3b
    return-void
.end method
