.class Lcom/android/settings/wifi/WifiSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
.implements Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_14

    new-instance v0, Lcom/android/settings/wifi/WifiSummaryUpdater;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/wifi/WifiSummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    :cond_14
    return-void
.end method


# virtual methods
.method public onSummaryChanged(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setListening(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WifiSummaryUpdater;->register(Z)V

    :cond_9
    return-void
.end method
