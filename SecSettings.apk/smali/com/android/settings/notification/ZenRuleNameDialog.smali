.class public abstract Lcom/android/settings/notification/ZenRuleNameDialog;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mDialog:Landroid/app/AlertDialog;

.field private final mEditText:Landroid/widget/EditText;

.field private final mIsNew:Z

.field private final mOriginalRuleName:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ZenRuleNameDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mIsNew:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/ZenRuleNameDialog;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mOriginalRuleName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/ZenRuleNameDialog;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->trimmedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/settings/notification/ZenModeSettings;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings/notification/ZenRuleNameDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_5f

    move v1, v2

    :goto_9
    iput-boolean v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mIsNew:Z

    iput-object p2, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mOriginalRuleName:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0d03c8

    invoke-virtual {v1, v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a071d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mIsNew:Z

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2c
    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mIsNew:Z

    if-eqz v1, :cond_61

    const v1, 0x7f12224d

    :goto_3d
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notification/ZenRuleNameDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenRuleNameDialog$1;-><init>(Lcom/android/settings/notification/ZenRuleNameDialog;)V

    const v3, 0x7f1213e0

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12055d

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mDialog:Landroid/app/AlertDialog;

    return-void

    :cond_5f
    move v1, v3

    goto :goto_9

    :cond_61
    const v1, 0x7f12227a    # 1.942463E38f

    goto :goto_3d
.end method

.method private trimmedText()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_a

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method


# virtual methods
.method public abstract onOk(Ljava/lang/String;)V
.end method

.method public show()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
