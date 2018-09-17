.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;
.super Landroid/app/Activity;
.source "UserDictionaryAddWordActivity.java"


# instance fields
.field private mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

.field private mEditText:Landroid/widget/EditText;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mMaxLength:I

.field private mResetTextAction:Z

.field private mTempWord:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mMaxLength:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mResetTextAction:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mTempWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mResetTextAction:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mTempWord:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mResetTextAction:Z

    return-void
.end method

.method private reportBackToCaller(ILandroid/os/Bundle;)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_b

    return-void

    :cond_b
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "listener"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Landroid/os/Messenger;

    if-nez v5, :cond_1b

    return-void

    :cond_1b
    move-object v3, v1

    check-cast v3, Landroid/os/Messenger;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v2, Landroid/os/Message;->what:I

    :try_start_26
    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    :goto_29
    return-void

    :catch_2a
    move-exception v0

    goto :goto_29
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->reportBackToCaller(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->finish()V

    return-void
.end method

.method public onClickConfirm(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v2, p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->reportBackToCaller(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f0d0361

    invoke-virtual {p0, v4}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0350

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mMaxLength:I

    const v4, 0x7f0a02df

    invoke-virtual {p0, v4}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mErrorTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mErrorTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v4, 0x7f0a0919

    invoke-virtual {p0, v4}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;

    invoke-direct {v5, p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity$1;-><init>(Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "com.android.settings.USER_DICTIONARY_EDIT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    const/4 v3, 0x0

    :goto_4f
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_5a

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_5a
    const-string/jumbo v4, "mode"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_65

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_65
    new-instance v4, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    return-void

    :cond_75
    const-string/jumbo v4, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    const/4 v3, 0x1

    goto :goto_4f

    :cond_80
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->finish()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0, p1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->saveStateIntoBundle(Landroid/os/Bundle;)V

    return-void
.end method
