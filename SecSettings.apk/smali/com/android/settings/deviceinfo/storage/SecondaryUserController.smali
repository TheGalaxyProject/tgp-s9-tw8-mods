.class public Lcom/android/settings/deviceinfo/storage/SecondaryUserController;
.super Lcom/android/settings/core/PreferenceController;
.source "SecondaryUserController.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;
.implements Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/SecondaryUserController$NoSecondaryUserController;
    }
.end annotation


# instance fields
.field private mSize:J

.field private mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTotalSizeBytes:J

.field private mUser:Landroid/content/pm/UserInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mUserIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .registers 5
    .param p2    # Landroid/content/pm/UserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    return-void
.end method

.method public static getSecondaryUserControllers(Landroid/content/Context;Lcom/android/settings/applications/UserManagerWrapper;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/applications/UserManagerWrapper;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/android/settings/applications/UserManagerWrapper;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/android/settings/applications/UserManagerWrapper;->getUsers()Ljava/util/List;

    move-result-object v4

    const/4 v2, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    :goto_13
    if-ge v2, v6, :cond_48

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v7

    if-nez v7, :cond_29

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v7

    if-eqz v7, :cond_2c

    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2c
    if-eqz v3, :cond_34

    invoke-static {v5, v3}, Lcom/android/settings/Utils;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v7

    if-eqz v7, :cond_3e

    :cond_34
    new-instance v7, Lcom/android/settings/deviceinfo/storage/UserProfileController;

    const/4 v8, 0x6

    invoke-direct {v7, p0, v3, p1, v8}, Lcom/android/settings/deviceinfo/storage/UserProfileController;-><init>(Landroid/content/Context;Landroid/content/pm/UserInfo;Lcom/android/settings/applications/UserManagerWrapper;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3e
    new-instance v7, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;-><init>(Landroid/content/Context;Landroid/content/pm/UserInfo;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_29

    :cond_48
    if-nez v0, :cond_52

    new-instance v7, Lcom/android/settings/deviceinfo/storage/SecondaryUserController$NoSecondaryUserController;

    invoke-direct {v7, p0}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController$NoSecondaryUserController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    return-object v1
.end method

.method private maybeSetIcon()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUserIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUserIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 8

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-nez v1, :cond_61

    new-instance v1, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string/jumbo v1, "pref_secondary_users"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getUserName(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pref_user_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mTotalSizeBytes:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    :cond_55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->maybeSetIcon()V

    :cond_61
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public getUser()Landroid/content/pm/UserInfo;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    return-object v0
.end method

.method public handleResult(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->getUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    if-eqz v0, :cond_15

    iget-object v2, v0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v2, v2, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->setSize(J)V

    :cond_15
    return-void
.end method

.method public handleUserIcons(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUser:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mUserIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->maybeSetIcon()V

    return-void
.end method

.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public setSize(J)V
    .registers 10

    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mSize:J

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mTotalSizeBytes:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJ)V

    :cond_f
    return-void
.end method

.method public setTotalSize(J)V
    .registers 4

    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/SecondaryUserController;->mTotalSizeBytes:J

    return-void
.end method
