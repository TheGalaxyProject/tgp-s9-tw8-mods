.class public Lcom/android/settings/WorkOnlyCategory;
.super Landroid/support/v7/preference/PreferenceCategory;
.source "WorkOnlyCategory.java"

# interfaces
.implements Lcom/android/settings/SelfAvailablePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {v1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getManagedProfiles(Landroid/os/UserManager;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1c

    :cond_1b
    return v3

    :cond_1c
    if-eqz v0, :cond_1f

    :goto_1e
    return v2

    :cond_1f
    move v2, v3

    goto :goto_1e
.end method
