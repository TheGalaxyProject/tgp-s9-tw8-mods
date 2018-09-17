.class public Lcom/android/settings/widget/ImeAwareEditText;
.super Landroid/widget/EditText;
.source "ImeAwareEditText.java"


# instance fields
.field private mHasPendingShowSoftInputRequest:Z

.field final mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings/widget/-$Lambda$dHG5DGYOImHBpTaqZZopKeGJGmI;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/-$Lambda$dHG5DGYOImHBpTaqZZopKeGJGmI;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings/widget/-$Lambda$dHG5DGYOImHBpTaqZZopKeGJGmI$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/-$Lambda$dHG5DGYOImHBpTaqZZopKeGJGmI$1;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/settings/widget/-$Lambda$dHG5DGYOImHBpTaqZZopKeGJGmI$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/-$Lambda$dHG5DGYOImHBpTaqZZopKeGJGmI$2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/settings/widget/-$Lambda$dHG5DGYOImHBpTaqZZopKeGJGmI$3;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/-$Lambda$dHG5DGYOImHBpTaqZZopKeGJGmI$3;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    return-void
.end method

.method private showSoftInputIfNecessary()V
    .registers 5

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/widget/ImeAwareEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iput-boolean v3, p0, Lcom/android/settings/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    :cond_16
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_settings_widget_ImeAwareEditText_1081()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/widget/ImeAwareEditText;->showSoftInputIfNecessary()V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-object v0
.end method

.method public scheduleShowSoftInput()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/widget/ImeAwareEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iput-boolean v3, p0, Lcom/android/settings/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    iget-object v1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :cond_1e
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/widget/ImeAwareEditText;->mHasPendingShowSoftInputRequest:Z

    return-void
.end method
