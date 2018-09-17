.class public Lcom/android/settings/TimeoutListPreference;
.super Lcom/android/settings/RestrictedListPreference;
.source "TimeoutListPreference.java"


# instance fields
.field private mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mInitialEntries:[Ljava/lang/CharSequence;

.field private mInitialValues:[Ljava/lang/CharSequence;

.field private mIsDialogShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/TimeoutListPreference;->mIsDialogShowing:Z

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TimeoutListPreference;->mInitialEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getSelectedItemSummary()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getSelectedValuePos()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/TimeoutListPreference;->mInitialEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getSelectedValuePos()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isDialogShowing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/TimeoutListPreference;->mIsDialogShowing:Z

    return v0
.end method

.method protected onDialogClosed(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedListPreference;->onDialogClosed(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/TimeoutListPreference;->mIsDialogShowing:Z

    return-void
.end method

.method protected onDialogCreated(Landroid/app/Dialog;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedListPreference;->onDialogCreated(Landroid/app/Dialog;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->create()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/TimeoutListPreference;->mIsDialogShowing:Z

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_f

    const v0, 0x7f0d002c

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_e
.end method

.method public removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .registers 15

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_12

    return-void

    :cond_12
    if-nez p3, :cond_21

    iget-object v7, p0, Lcom/android/settings/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v7, :cond_21

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_21

    return-void

    :cond_21
    if-nez p3, :cond_28

    const-wide p1, 0x7fffffffffffffffL

    :cond_28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_33
    iget-object v7, p0, Lcom/android/settings/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    array-length v7, v7

    if-ge v1, v7, :cond_59

    iget-object v7, p0, Lcom/android/settings/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    aget-object v7, v7, v1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v7, v4, p1

    if-gtz v7, :cond_56

    iget-object v7, p0, Lcom/android/settings/TimeoutListPreference;->mInitialEntries:[Ljava/lang/CharSequence;

    aget-object v7, v7, v1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/settings/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    aget-object v7, v7, v1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_59
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_63

    invoke-virtual {p0, p3}, Lcom/android/settings/TimeoutListPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_63
    invoke-virtual {p0, v9}, Lcom/android/settings/TimeoutListPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    array-length v8, v8

    if-eq v7, v8, :cond_9d

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    new-array v7, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/android/settings/TimeoutListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v7, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/android/settings/TimeoutListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/android/settings/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    int-to-long v8, v6

    cmp-long v7, v8, p1

    if-gtz v7, :cond_9e

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    :cond_9d
    :goto_9d
    return-void

    :cond_9e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_9d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v7, v8, p1

    if-nez v7, :cond_9d

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_9d
.end method

.method public updateInitialEntry()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TimeoutListPreference;->mInitialEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method public updateSelectedItem()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getSelectedValuePos()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_12
    return-void
.end method
