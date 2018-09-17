.class public Lcom/android/settings/SimPersoLockSettings;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "SimPersoLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SimPersoLockSettings$1;,
        Lcom/android/settings/SimPersoLockSettings$2;,
        Lcom/android/settings/SimPersoLockSettings$3;,
        Lcom/android/settings/SimPersoLockSettings$LockState;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-settings-SimPersoLockSettings$LockStateSwitchesValues:[I

.field private static final MAX_PASSWD:I

.field private static mNum_Retry:I


# instance fields
.field private final MSG_SHOW_SOFTINPUT:I

.field private mCancelButton:Landroid/widget/Button;

.field protected mH:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

.field private mNewPasswd:Ljava/lang/String;

.field private mNextButton:Landroid/widget/Button;

.field private mOldPasswd:Ljava/lang/String;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field private mRes:Landroid/content/res/Resources;

.field private mToState:Z


# direct methods
.method private static synthetic -getcom-android-settings-SimPersoLockSettings$LockStateSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/settings/SimPersoLockSettings;->-com-android-settings-SimPersoLockSettings$LockStateSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/settings/SimPersoLockSettings;->-com-android-settings-SimPersoLockSettings$LockStateSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/settings/SimPersoLockSettings$LockState;->values()[Lcom/android/settings/SimPersoLockSettings$LockState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_REENTER:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lcom/android/settings/SimPersoLockSettings;->-com-android-settings-SimPersoLockSettings$LockStateSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -wrap0(Lcom/android/settings/SimPersoLockSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->showSoftInput()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/SimPersoLockSettings;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/SimPersoLockSettings;->simLockChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/SimPersoLockSettings;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/SimPersoLockSettings;->simLockPasswdChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_ConfigUsimPersonalLockPwdLength"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/android/settings/SimPersoLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SimPersoLockSettings$1;-><init>(Lcom/android/settings/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/SimPersoLockSettings;->MSG_SHOW_SOFTINPUT:I

    new-instance v0, Lcom/android/settings/SimPersoLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SimPersoLockSettings$2;-><init>(Lcom/android/settings/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mH:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/SimPersoLockSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SimPersoLockSettings$3;-><init>(Lcom/android/settings/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private showSoftInput()V
    .registers 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v1, "SimPersoLockSettings"

    const-string/jumbo v2, "[PPCLP] showSoftInput returned true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    const-string/jumbo v1, "SimPersoLockSettings"

    const-string/jumbo v2, "[PPCLP] showSoftInput returned false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mH:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1d
.end method

.method private simLockChanged(Z)V
    .registers 6

    const/4 v3, 0x0

    const-string/jumbo v0, "SimPersoLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simLockChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_48

    sput v3, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    iget-boolean v0, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f121971

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_33
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    :goto_36
    return-void

    :cond_37
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f121973

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_33

    :cond_48
    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_67

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_67

    const v0, 0x7f120f5e

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_63
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_36

    :cond_67
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120f5a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_63

    :cond_7e
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f121965

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_63
.end method

.method private simLockPasswdChanged(Z)V
    .registers 6

    const/4 v3, 0x0

    const-string/jumbo v0, "SimPersoLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simLockPasswdChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_64

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_3c

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3c

    const v0, 0x7f120f5e

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_38
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    :goto_3b
    return-void

    :cond_3c
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120f5a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_38

    :cond_53
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f121965

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_38

    :cond_64
    sput v3, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f121970

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_3b
.end method

.method private tryChangeSimLockPasswd()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mOldPasswd:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private updateViews()V
    .registers 4

    const/16 v2, 0x8

    invoke-static {}, Lcom/android/settings/SimPersoLockSettings;->-getcom-android-settings-SimPersoLockSettings$LockStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_c8

    const-string/jumbo v0, "SimPersoLockSettings"

    const-string/jumbo v1, "Exception: unexpected state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_23
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_2d

    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_36

    :cond_2d
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f120f5b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f121969

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_35

    :pswitch_3f
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_49

    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_52

    :cond_49
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f120f5c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_35

    :cond_52
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f12196a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_35

    :pswitch_5b
    iget-boolean v0, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    if-eqz v0, :cond_84

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f120f54

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_35

    :cond_6e
    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_7b

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f1219a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_35

    :cond_7b
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f12194b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_35

    :cond_84
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f120f52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_35

    :cond_93
    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_a0

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f1219a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_35

    :cond_a0
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f121943

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_35

    :pswitch_a9
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_b3

    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_bd

    :cond_b3
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f120f5d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_35

    :cond_bd
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f12196b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_35

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_a9
        :pswitch_23
        :pswitch_3f
    .end packed-switch
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x11b0

    return v0
.end method

.method protected getProgressDialog()Landroid/app/Dialog;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_23

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f121968

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_23
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_17

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_17

    const v0, 0x7f120f5e

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2a

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    :cond_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_29

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->onClickConfirm()V

    return-void
.end method

.method public onClickConfirm()V
    .registers 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1c

    const v4, 0x7f12196c

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1c
    const/4 v4, 0x4

    if-lt v1, v4, :cond_23

    sget v4, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-le v1, v4, :cond_45

    :cond_23
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v4

    if-nez v4, :cond_2f

    sget v4, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3a

    :cond_2f
    const v4, 0x7f120f60

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_39
    return-void

    :cond_3a
    const v4, 0x7f121974

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_39

    :cond_45
    invoke-static {}, Lcom/android/settings/SimPersoLockSettings;->-getcom-android-settings-SimPersoLockSettings$LockStateSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v5}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_ee

    const-string/jumbo v4, "SimPersoLockSettings"

    const-string/jumbo v5, "Exception: unexpected click"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Unexpected click event"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_66
    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    sget-object v4, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_REENTER:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v4}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    :goto_77
    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_80
    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->tryChangeSimLockPasswd()V

    goto :goto_77

    :cond_96
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v4

    if-eqz v4, :cond_ac

    const v4, 0x7f120f5f

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_a6
    sget-object v4, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v4}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_77

    :cond_ac
    const v4, 0x7f12196f

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_a6

    :pswitch_b7
    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mOldPasswd:Ljava/lang/String;

    sget-object v4, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v4}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_77

    :pswitch_c9
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    invoke-interface {v4, v5, v2, v0}, Lcom/android/internal/telephony/IccCard;->setIccSimPersoEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_77

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_b7
        :pswitch_66
        :pswitch_80
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccUsimPersoEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->setupViews()V

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "checkbox"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_57

    const-string/jumbo v1, "SimPersoLockSettings"

    const-string/jumbo v2, "Change USIM lock state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4e

    const v1, 0x7f121972

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_4e
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    :goto_53
    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->updateViews()V

    return-void

    :cond_57
    const-string/jumbo v1, "SimPersoLockSettings"

    const-string/jumbo v2, "Change USIM lock password"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_68

    const v1, 0x7f121966

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_68
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_53
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    const/4 v0, 0x6

    if-ne p2, v0, :cond_b

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->onClickConfirm()V

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x5

    if-eq p2, v0, :cond_6

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_c
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPersoLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onResume()V
    .registers 6

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/SimPersoLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mH:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected setupViews()V
    .registers 7

    const v5, 0x7f08040a

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v1, 0x7f0d02d4

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->setContentView(I)V

    const v1, 0x7f0a0150

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0598

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "show_button_background"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8d

    move v1, v2

    :goto_39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_53
    const v1, 0x7f0a0616

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v4, 0x2000000

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    const v1, 0x7f0a03ac

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v4, 0x12

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    sget v5, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_8d
    move v1, v3

    goto :goto_39
.end method

.method public updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V
    .registers 5

    iput-object p1, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    const-string/jumbo v0, "SimPersoLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->updateViews()V

    return-void
.end method
