.class public Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MirrorLinkAppDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$1;,
        Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;,
        Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private ainfo:Landroid/content/pm/ApplicationInfo;

.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appSnippet:Landroid/view/View;

.field private icon:Landroid/widget/ImageView;

.field private label:Landroid/widget/TextView;

.field private final lock:Ljava/lang/Object;

.field private mAppInfo:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

.field private mCertificateLocale:Landroid/widget/TextView;

.field private mCertificateSigningEntity:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mMenuVerifyCertificate:Landroid/view/MenuItem;

.field private mMirrorlinkListener:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

.field private mResult:Z

.field private mServiceCon:Landroid/content/ServiceConnection;

.field private mTextViewValidDate:Landroid/widget/TextView;

.field private mTextViewValidDateTitle:Landroid/widget/TextView;

.field private mTextViewValidDateUnderLine:Landroid/view/View;

.field private mThread:Ljava/lang/Thread;

.field private mValidCheck:Landroid/widget/TextView;

.field private mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mMirrorlinkListener:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;)Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mMirrorlinkListener:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mResult:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->updateAppInfo(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mResult:Z

    new-instance v0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$1;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)V

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private doUnBindFromService()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mMirrorlinkListener:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    if-eqz v1, :cond_23

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "MirrorLinkAppDetail: doUnbindFromService"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :try_start_18
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mMirrorlinkListener:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    invoke-interface {v1, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->unRegisterListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_24

    :goto_1f
    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mMirrorlinkListener:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    :cond_23
    return-void

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f
.end method

.method private updateAppInfo(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;)V
    .registers 7

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v0, p1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    if-eqz v0, :cond_5f

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MirrorLinkAppDetail :updateAppInfo mAppInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mValidDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MirrorLinkAppDetail :updateAppInfo mAppInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mRestricted:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "VALID"

    iget-object v1, p1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    const v1, 0x7f12119e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateUnderLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mCertificateSigningEntity:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mEntityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mCertificateLocale:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mNonRestricted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mValidDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_75
    const-string/jumbo v0, "UNCHECKED"

    iget-object v1, p1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    const v1, 0x7f1211a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateUnderLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5f

    :cond_98
    const-string/jumbo v0, "NONCERTIFIED"

    iget-object v1, p1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    const v1, 0x7f12119f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateUnderLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5f

    :cond_bb
    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateUnderLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5f
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0xe81

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_69

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mId:I

    new-instance v1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string/jumbo v2, "entity_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mEntityName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string/jumbo v2, "non_restricted"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mNonRestricted:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string/jumbo v2, "restricted"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mRestricted:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string/jumbo v2, "vaild_date"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mValidDate:Ljava/lang/String;

    :cond_69
    new-instance v1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$2;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)V

    iput-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mServiceCon:Landroid/content/ServiceConnection;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    const v1, 0x7f1211a1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mMenuVerifyCertificate:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mMenuVerifyCertificate:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mMenuVerifyCertificate:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d0196

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a00a0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v6, v4, v6, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    const v4, 0x7f0a0094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_35
    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    iget-object v3, v3, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->appIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    iget-object v3, v3, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mAppName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->ainfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    const v4, 0x7f0a0097

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->label:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->label:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->ainfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    const v4, 0x7f0a009f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    const v3, 0x7f0a0924

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateTitle:Landroid/widget/TextView;

    const v3, 0x7f0a0923

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    const v3, 0x7f0a0925

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateUnderLine:Landroid/view/View;

    const v3, 0x7f0a0166

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mCertificateSigningEntity:Landroid/widget/TextView;

    const v3, 0x7f0a0164

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mCertificateLocale:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->updateAppInfo(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;)V
    :try_end_b0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_b0} :catch_b1

    :goto_b0
    return-object v2

    :catch_b1
    move-exception v0

    const-string/jumbo v3, "MirrorLinkAppDetail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Application icon not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0
.end method

.method public onDestroy()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "MirrorLinkAppDetail: onDestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->doUnBindFromService()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_4c

    :goto_7
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0357

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_21
    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mMenuVerifyCertificate:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mResult:Z
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_49

    monitor-exit v1

    const-string/jumbo v0, "MirrorLinkAppDetail"

    const-string/jumbo v1, "Manual Revocation excuted: disabling the button now"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "MirrorLinkAppDetail Manual Revocation excuted: disabling the button now"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_7

    :catchall_49
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_data_4c
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mResult:Z

    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->doUnBindFromService()V

    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-nez v1, :cond_42

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "MirrorLinkAppDetail : Binding to Tms"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.MIRRORLINK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.app.mirrorlink"

    const-string/jumbo v3, "com.samsung.android.mirrorlink.service.TmsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_3a

    const-string/jumbo v1, "MirrorLinkAppDetail"

    const-string/jumbo v2, "Unable to resolve MIRRORLINK_MANAGER_SERVICE service."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3a
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mServiceCon:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_42
    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public run()V
    .registers 7

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "MirrorLinkAppDetailfrom runnable thread"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_8
    iget-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_47

    :try_start_b
    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    iget-object v5, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    iget-object v5, v5, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mAppName:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->performRevocationCheck(Ljava/lang/String;)V

    :cond_18
    :goto_18
    iget-boolean v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->mResult:Z

    if-nez v3, :cond_2f

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->lock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_22

    goto :goto_18

    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v4

    throw v3
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_25} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_25} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_25} :catch_47

    :catch_25
    move-exception v1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "MirrorLinkAppDetail: InterruptedException !"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2e
    return-void

    :cond_2f
    :try_start_2f
    monitor-exit v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$3;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_3c} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_3c} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3c} :catch_47

    goto :goto_2e

    :catch_3d
    move-exception v0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "MirrorLinkAppDetail: RemoteException thrown !"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2e

    :catch_47
    move-exception v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "MirrorLinkAppDetail: Exception thrown !"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2e
.end method
