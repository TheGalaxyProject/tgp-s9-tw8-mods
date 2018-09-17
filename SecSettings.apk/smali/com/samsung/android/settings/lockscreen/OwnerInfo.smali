.class public Lcom/samsung/android/settings/lockscreen/OwnerInfo;
.super Landroid/app/DialogFragment;
.source "OwnerInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;,
        Lcom/samsung/android/settings/lockscreen/OwnerInfo$DialogFragmentListener;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field private static OWNER_INFO:I

.field private static OWNER_INFO_CANCEL_BUTTON:I

.field private static OWNER_INFO_DONE_BUTTON:I

.field private static OWNER_INFO_VIEW_ID:I


# instance fields
.field context:Landroid/content/Context;

.field private info:Ljava/lang/String;

.field isFromUnlock:Z

.field private listener:Lcom/samsung/android/settings/lockscreen/OwnerInfo$DialogFragmentListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNickname:Landroid/widget/EditText;

.field private mOwnerInfo:Landroid/widget/EditText;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mShowNickname:Z

.field private mSpinner:Landroid/widget/Spinner;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/ScrollView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->showInputMethod()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    return-void
.end method

.method private hideSoftInput()V
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .registers 10

    const/16 v7, 0x41

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_35

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    :cond_35
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v4, 0x7f0a060a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v4, 0x7f0a07b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v4, 0x7f0a02df

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mErrorTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f12190e

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    :cond_7e
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v4, 0x7f0a0607

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->setSpinnerForDisplayOption()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "input_text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_aa

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_aa

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    :cond_aa
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    :cond_c1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_da

    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->isFromUnlock:Z

    if-eqz v3, :cond_da

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    const-string/jumbo v4, "inputType=option"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_da
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ed

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    :cond_ed
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v4, 0x7f0a0608

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mNickname:Landroid/widget/EditText;

    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mShowNickname:Z

    if-nez v3, :cond_132

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mNickname:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_103
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_124

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v3

    if-eqz v3, :cond_14a

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f121922

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    :cond_124
    :goto_124
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/samsung/android/settings/lockscreen/OwnerInfo$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo$2;-><init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->showInputMethod()V

    return-void

    :cond_132
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mNickname:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mNickname:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelected(Z)V

    goto :goto_103

    :cond_14a
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f121929

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_124
.end method

.method public static newInstance(I)Lcom/samsung/android/settings/lockscreen/OwnerInfo;
    .registers 4

    new-instance v1, Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-direct {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/samsung/android/settings/lockscreen/OwnerInfo;
    .registers 5

    new-instance v1, Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-direct {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "input_text"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private setSpinnerForDisplayOption()V
    .registers 7

    const/16 v5, 0x8

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v4, 0x7f0a0800

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2a

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v4, 0x7f0a0609

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    :cond_2a
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "contact_info_option"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0300de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d03c2

    invoke-direct {v0, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mSpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;-><init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private showInputMethod()V
    .registers 7

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;-><init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1f
    return-void

    :cond_20
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_31

    :cond_30
    return-void

    :cond_31
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1f
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    const v8, 0x7f0b03bf

    const/4 v0, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_118

    :goto_9
    return-void

    :pswitch_a
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->listener:Lcom/samsung/android/settings/lockscreen/OwnerInfo$DialogFragmentListener;

    instance-of v1, v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    if-eqz v1, :cond_af

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->saveChanges()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    sget v5, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->listener:Lcom/samsung/android/settings/lockscreen/OwnerInfo$DialogFragmentListener;

    invoke-interface {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo$DialogFragmentListener;->onPositiveClick()V

    :cond_25
    :goto_25
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->hideSoftInput()V

    sget-boolean v1, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e3

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->context:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "OWST"

    const/16 v5, 0x3e8

    invoke-static {v1, v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_49
    :goto_49
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8b

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Configure the unlock banner : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_8b
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->OWNER_INFO_DONE_BUTTON:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->OWNER_INFO_VIEW_ID:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->OWNER_INFO_VIEW_ID:I

    sget v2, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->OWNER_INFO_DONE_BUTTON:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    goto/16 :goto_9

    :cond_af
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->saveChanges()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e1

    move v1, v2

    :goto_c5
    sget v5, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    invoke-virtual {v4, v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/16 v5, 0xc8

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6, v4}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_25

    :cond_e1
    move v1, v3

    goto :goto_c5

    :cond_e3
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->context:Landroid/content/Context;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "OWST"

    invoke-static {v1, v4, v5, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_49

    :pswitch_f0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->hideSoftInput()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->OWNER_INFO_CANCEL_BUTTON:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->OWNER_INFO_VIEW_ID:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->OWNER_INFO_VIEW_ID:I

    sget v2, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->OWNER_INFO_CANCEL_BUTTON:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    goto/16 :goto_9

    nop

    :pswitch_data_118
    .packed-switch -0x2
        :pswitch_f0
        :pswitch_a
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->showInputMethod()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string/jumbo v2, "show_nickname"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "show_nickname"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mShowNickname:Z

    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->isFromUnlock:Z

    const-string/jumbo v2, "direct_lockscren"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->isFromUnlock:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d01d0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->initView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1208de

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/OwnerInfo$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo$1;-><init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->hideSoftInput()V

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .registers 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "content://com.sec.knox.provider2/MiscPolicy"

    const-string/jumbo v3, "getCurrentLockScreenString"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "OwnerInfoSettings"

    const-string/jumbo v2, "onResume() : OwnerInfo has updated by MDM admin."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/OwnerInfo$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo$5;-><init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;

    const/16 v4, 0x41

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/lockscreen/OwnerInfo$CustomLengthFilter;-><init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->OWNER_INFO:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->OWNER_INFO:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    return-void

    :cond_6c
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->showInputMethod()V

    goto :goto_31
.end method

.method saveChanges()V
    .registers 8

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v5, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mShowNickname:Z

    if-eqz v4, :cond_50

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mNickname:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_50

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    :cond_50
    return-void
.end method
