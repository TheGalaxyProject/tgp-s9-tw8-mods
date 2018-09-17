.class Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilterSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFilterOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mManageApplications:Lcom/android/settings/applications/ManageApplications;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ManageApplications;)V
    .registers 4

    invoke-static {p1}, Lcom/android/settings/applications/ManageApplications;->-get4(Lcom/android/settings/applications/ManageApplications;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0104

    invoke-direct {p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->setDropDownViewResource(I)V

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    return-void
.end method

.method private getFilterString(I)Ljava/lang/CharSequence;
    .registers 4

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableFilter(I)V
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Disabling filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->-get14(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_8c

    move v0, v3

    :goto_42
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    if-ne v0, p1, :cond_8b

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8b

    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_7a

    const-string/jumbo v0, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Auto selecting filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->-get4(Lcom/android/settings/applications/ManageApplications;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/applications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_8b
    return-void

    :cond_8c
    const/16 v0, 0x8

    goto :goto_42
.end method

.method public enableFilter(I)V
    .registers 8

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Enabling filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->-get14(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_89

    move v0, v3

    :goto_4b
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_88

    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_77

    const-string/jumbo v0, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Auto selecting filter "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->-get4(Lcom/android/settings/applications/ManageApplications;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/applications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_88
    return-void

    :cond_89
    const/16 v0, 0x8

    goto :goto_4b
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->mFilterOptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getFilterString(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setFilterEnabled(IZ)V
    .registers 3

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->disableFilter(I)V

    goto :goto_5
.end method
