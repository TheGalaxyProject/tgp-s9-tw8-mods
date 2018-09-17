.class public Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "WifiP2pAvailablePeer.java"


# instance fields
.field private mBinding:Z

.field private mContactDrawable:Landroid/graphics/drawable/Drawable;

.field public mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDeviceType:I

.field private mIconIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 13

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    const v4, 0x7f0d03ad

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setLayoutResource(I)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v3, v4, 0x8

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    and-int/lit16 v1, v4, 0xff

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3f

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3f

    return-void

    :cond_3f
    if-lt v3, v7, :cond_9b

    const/16 v4, 0x1b

    if-gt v3, v4, :cond_9b

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    sparse-switch v4, :sswitch_data_fc

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeDefaultIcon:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    iput v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    :goto_54
    return-void

    :sswitch_55
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto :goto_54

    :sswitch_5d
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v4, v4, v7

    iput v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto :goto_54

    :sswitch_64
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v4, v4, v8

    iput v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto :goto_54

    :sswitch_6b
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iput v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto :goto_54

    :sswitch_73
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    aget v4, v4, v9

    iput v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto :goto_54

    :sswitch_7a
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    iput v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto :goto_54

    :sswitch_82
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    iput v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto :goto_54

    :sswitch_8a
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    iput v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto :goto_54

    :sswitch_92
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->deviceTypeOpionalIcon:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    iput v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto :goto_54

    :cond_9b
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v4, :cond_b1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    :cond_b1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-nez v4, :cond_cd

    const-string/jumbo v4, "WifiP2pAvailablePeer"

    const-string/jumbo v5, "Malformed primaryDeviceType"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    sget-object v5, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v5}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v5

    aget v4, v4, v5

    iput v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto :goto_54

    :cond_cd
    iget v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    sget-object v5, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->pc:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v5}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v5

    if-lt v4, v5, :cond_ed

    iget v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    sget-object v5, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->level_box:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v5}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v5

    if-gt v4, v5, :cond_ed

    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    iget v5, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    iput v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto/16 :goto_54

    :cond_ed
    sget-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    sget-object v5, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v5}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->getValue()I

    move-result v5

    aget v4, v4, v5

    iput v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    goto/16 :goto_54

    nop

    :sswitch_data_fc
    .sparse-switch
        0x401 -> :sswitch_55
        0x501 -> :sswitch_5d
        0x502 -> :sswitch_64
        0x503 -> :sswitch_6b
        0x701 -> :sswitch_73
        0x702 -> :sswitch_7a
        0x704 -> :sswitch_82
        0x1502 -> :sswitch_8a
        0x1601 -> :sswitch_92
    .end sparse-switch
.end method

.method private refresh()V
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030140

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_50

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_50

    :cond_24
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_50

    const v2, 0x7f1220c7

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setSummary(I)V

    :cond_34
    :goto_34
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_70

    iget v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mIconIndex:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setIcon(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0602b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_4f
    return-void

    :cond_50
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060139

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_34

    :cond_70
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mContactDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4f
.end method


# virtual methods
.method public compareTo(Landroid/support/v7/preference/Preference;)I
    .registers 6

    const/4 v1, 0x1

    instance-of v2, p1, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    if-nez v2, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v2, v3, :cond_1f

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v2, v3, :cond_1e

    const/4 v1, -0x1

    :cond_1e
    return v1

    :cond_1f
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_32
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected notifyChanged()V
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mBinding:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0}, Landroid/support/v7/preference/CheckBoxPreference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mBinding:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setTitle(Ljava/lang/CharSequence;)V

    :goto_14
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceName:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->refresh()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mBinding:Z

    invoke-super {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void

    :cond_29
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_14
.end method
