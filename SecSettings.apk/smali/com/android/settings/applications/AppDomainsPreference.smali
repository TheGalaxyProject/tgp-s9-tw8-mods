.class public Lcom/android/settings/applications/AppDomainsPreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "AppDomainsPreference.java"


# instance fields
.field private mNumEntries:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d0039

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppDomainsPreference;->setDialogLayoutResource(I)V

    const v0, 0x7f0d003a

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppDomainsPreference;->setListItemLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppDomainsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/applications/AppDomainsPreference;->mNumEntries:I

    if-nez v3, :cond_12

    const v3, 0x7f1208d8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_12
    invoke-super {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/applications/AppDomainsPreference;->mNumEntries:I

    if-ne v3, v5, :cond_26

    const v2, 0x7f1208d9

    :goto_1d
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_26
    const v2, 0x7f1208da

    goto :goto_1d
.end method

.method protected onBindListItem(Landroid/view/View;I)V
    .registers 6

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/AppDomainsPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_12

    const v2, 0x7f0a0293

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method public setTitles([Ljava/lang/CharSequence;)V
    .registers 3

    if-eqz p1, :cond_9

    array-length v0, p1

    :goto_3
    iput v0, p0, Lcom/android/settings/applications/AppDomainsPreference;->mNumEntries:I

    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method
