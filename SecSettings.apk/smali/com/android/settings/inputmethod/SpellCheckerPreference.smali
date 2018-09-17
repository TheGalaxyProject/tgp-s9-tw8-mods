.class Lcom/android/settings/inputmethod/SpellCheckerPreference;
.super Lcom/android/settings/CustomListPreference;
.source "SpellCheckerPreference.java"


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private final mScis:[Landroid/view/textservice/SpellCheckerInfo;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/inputmethod/SpellCheckerPreference;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->onSettingsButtonClicked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Landroid/view/textservice/SpellCheckerInfo;)V
    .registers 8

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    const v3, 0x7f0d0236

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setWidgetLayoutResource(I)V

    array-length v3, p2

    new-array v1, v3, [Ljava/lang/CharSequence;

    array-length v3, p2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    :goto_13
    array-length v3, p2

    if-ge v0, v3, :cond_2b

    aget-object v3, p2, v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2b
    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onSettingsButtonClicked()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_4
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_b

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v1

    goto :goto_b
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object p1, v0, v1

    :goto_d
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_12
    move-object p1, v0

    goto :goto_d
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x7f0a079c

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/android/settings/inputmethod/SpellCheckerPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference$1;-><init>(Lcom/android/settings/inputmethod/SpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1b
    const/4 v1, 0x4

    goto :goto_f
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    const v0, 0x7f1205b5

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public setSelected(Landroid/view/textservice/SpellCheckerInfo;)V
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setValue(Ljava/lang/String;)V

    return-void

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setValueIndex(I)V

    return-void

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_26
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->setValue(Ljava/lang/String;)V

    if-eqz p1, :cond_10

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_a
    const/4 v3, -0x1

    if-ne v0, v3, :cond_12

    iput-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    return-void

    :cond_10
    const/4 v0, -0x1

    goto :goto_a

    :cond_12
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v1, v3, v0

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    iput-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    :goto_22
    return-void

    :cond_23
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_22
.end method
