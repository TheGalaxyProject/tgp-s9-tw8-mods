.class public Landroid/support/v7/preference/SecPreferenceConfig;
.super Landroid/support/v7/preference/Preference;
.source "SecPreferenceConfig.java"


# instance fields
.field private mColorUpdateButton:I

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPref:Landroid/content/SharedPreferences;

.field private mTextUpdateButton:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/support/v7/preference/SecPreferenceConfig;)Z
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/preference/SecPreferenceConfig;->isOnline()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/support/v7/preference/SecPreferenceConfig;)I
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/preference/SecPreferenceConfig;->readUpdateButtonState()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/support/v7/preference/SecPreferenceConfig;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v7/preference/SecPreferenceConfig;->forceRefreshConfigVersion()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const v0, 0x7f040089

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SecPreferenceConfig;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SecPreferenceConfig;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, -0xffff01

    iput v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mColorUpdateButton:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SecPreferenceConfig;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private forceRefreshConfigVersion()V
    .registers 7

    :try_start_0
    iget-object v2, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "content://com.samsung.nsds.provider/device_config/force_update"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method private getConfigVersion()Ljava/lang/String;
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "version"

    aput-object v1, v2, v4

    const-string/jumbo v1, "content://com.samsung.nsds.provider/device_config"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_37

    :try_start_1f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_46

    move-result-object v1

    if-eqz v6, :cond_36

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_36
    return-object v1

    :cond_37
    if-eqz v6, :cond_3c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3c
    iget-object v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const v3, 0x7f1207a0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catchall_46
    move-exception v1

    if-eqz v6, :cond_4c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4c
    throw v1
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.settings.preference.config.update"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mPref:Landroid/content/SharedPreferences;

    iget-object v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mEditor:Landroid/content/SharedPreferences$Editor;

    const v1, 0x7f0d007c

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SecPreferenceConfig;->setLayoutResource(I)V

    invoke-direct {p0}, Landroid/support/v7/preference/SecPreferenceConfig;->readUpdateButtonState()I

    move-result v0

    if-eq v0, v4, :cond_2a

    invoke-direct {p0, v3}, Landroid/support/v7/preference/SecPreferenceConfig;->storeUpdateButtonState(I)V

    invoke-virtual {p0, v4}, Landroid/support/v7/preference/SecPreferenceConfig;->setSelectable(Z)V

    :goto_29
    return-void

    :cond_2a
    iget-object v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const v2, 0x7f121ce9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    const v1, -0xffff01

    iput v1, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mColorUpdateButton:I

    invoke-virtual {p0, v3}, Landroid/support/v7/preference/SecPreferenceConfig;->setSelectable(Z)V

    goto :goto_29
.end method

.method private isOnline()Z
    .registers 5

    iget-object v2, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private readUpdateButtonState()I
    .registers 4

    iget-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "com.settings.update_button"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private storeUpdateButtonState(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "com.settings.update_button"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-direct {p0}, Landroid/support/v7/preference/SecPreferenceConfig;->readUpdateButtonState()I

    move-result v0

    const v3, 0x7f0a0906

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0835

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/support/v7/preference/SecPreferenceConfig;->getConfigVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_41

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mColorUpdateButton:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3c

    new-instance v3, Landroid/support/v7/preference/SecPreferenceConfig$1;

    invoke-direct {v3, p0}, Landroid/support/v7/preference/SecPreferenceConfig$1;-><init>(Landroid/support/v7/preference/SecPreferenceConfig;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3b
    return-void

    :cond_3c
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3b

    :cond_41
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3b
.end method

.method public setUpdateButtonVisibility(I)V
    .registers 7

    const/4 v4, 0x0

    const v3, -0xffff01

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SecPreferenceConfig;->storeUpdateButtonState(I)V

    if-ne p1, v2, :cond_1e

    iget-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const v1, 0x7f121ce9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    iput v3, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mColorUpdateButton:I

    invoke-virtual {p0, v4}, Landroid/support/v7/preference/SecPreferenceConfig;->setSelectable(Z)V

    :goto_1a
    invoke-virtual {p0}, Landroid/support/v7/preference/SecPreferenceConfig;->notifyChanged()V

    return-void

    :cond_1e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_32

    iget-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const v1, 0x7f121cf4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    iput v3, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mColorUpdateButton:I

    invoke-virtual {p0, v4}, Landroid/support/v7/preference/SecPreferenceConfig;->setSelectable(Z)V

    goto :goto_1a

    :cond_32
    const/4 v0, 0x3

    if-ne p1, v0, :cond_49

    iget-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mContext:Landroid/content/Context;

    const v1, 0x7f1209a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mTextUpdateButton:Ljava/lang/String;

    const v0, -0x777778

    iput v0, p0, Landroid/support/v7/preference/SecPreferenceConfig;->mColorUpdateButton:I

    invoke-virtual {p0, v2}, Landroid/support/v7/preference/SecPreferenceConfig;->setSelectable(Z)V

    goto :goto_1a

    :cond_49
    invoke-virtual {p0, v2}, Landroid/support/v7/preference/SecPreferenceConfig;->setSelectable(Z)V

    goto :goto_1a
.end method
