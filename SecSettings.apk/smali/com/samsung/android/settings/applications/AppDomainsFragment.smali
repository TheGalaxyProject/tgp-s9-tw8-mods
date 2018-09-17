.class public Lcom/samsung/android/settings/applications/AppDomainsFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "AppDomainsFragment.java"


# instance fields
.field private mDescription:Landroid/widget/TextView;

.field private mUrls:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method

.method private setDescription()V
    .registers 5

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mUrls:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mUrls:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2f
    iget-object v2, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0xf21

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    const/4 v3, 0x0

    const v2, 0x7f0d02ef

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a022e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/AppDomainsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string/jumbo v2, "entries"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mUrls:[Ljava/lang/CharSequence;

    :cond_22
    iget-object v2, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mUrls:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_29

    invoke-direct {p0}, Lcom/samsung/android/settings/applications/AppDomainsFragment;->setDescription()V

    :cond_29
    return-object v1
.end method
