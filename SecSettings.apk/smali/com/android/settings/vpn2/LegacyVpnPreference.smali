.class public Lcom/android/settings/vpn2/LegacyVpnPreference;
.super Lcom/android/settings/vpn2/ManageablePreference;
.source "LegacyVpnPreference.java"


# instance fields
.field private mProfile:Lcom/android/internal/net/VpnProfile;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/vpn2/ManageablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f080310

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setIcon(I)V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/support/v7/preference/Preference;)I
    .registers 7

    const/4 v4, 0x3

    instance-of v3, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-eqz v3, :cond_37

    move-object v1, p1

    check-cast v1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    iget v3, v1, Lcom/android/settings/vpn2/LegacyVpnPreference;->mState:I

    iget v4, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mState:I

    sub-int v2, v3, v4

    if-nez v2, :cond_36

    iget-object v3, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_36

    iget-object v3, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v3, v3, Lcom/android/internal/net/VpnProfile;->type:I

    iget-object v4, v1, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v4, v4, Lcom/android/internal/net/VpnProfile;->type:I

    sub-int v2, v3, v4

    if-nez v2, :cond_36

    iget-object v3, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    :cond_36
    return v2

    :cond_37
    instance-of v3, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v3, :cond_4c

    move-object v0, p1

    check-cast v0, Lcom/android/settings/vpn2/AppPreference;

    iget v3, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mState:I

    if-eq v3, v4, :cond_4a

    invoke-virtual {v0}, Lcom/android/settings/vpn2/AppPreference;->getState()I

    move-result v3

    if-ne v3, v4, :cond_4a

    const/4 v3, 0x1

    return v3

    :cond_4a
    const/4 v3, -0x1

    return v3

    :cond_4c
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result v3

    return v3
.end method

.method public getProfile()Lcom/android/internal/net/VpnProfile;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a079c

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->performClick()V

    return-void

    :cond_13
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public setProfile(Lcom/android/internal/net/VpnProfile;)V
    .registers 5

    iget-object v2, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    :goto_8
    if-eqz p1, :cond_1d

    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    :goto_c
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->notifyHierarchyChanged()V

    :cond_18
    iput-object p1, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    return-void

    :cond_1b
    const/4 v1, 0x0

    goto :goto_8

    :cond_1d
    const/4 v0, 0x0

    goto :goto_c
.end method
