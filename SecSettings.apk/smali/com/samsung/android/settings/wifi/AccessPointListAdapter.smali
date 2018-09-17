.class public Lcom/samsung/android/settings/wifi/AccessPointListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccessPointListAdapter.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final mBaseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->DBG:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_15

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getId()J

    move-result-wide v2

    return-wide v2

    :cond_15
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_10
    return-object v1
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .registers 6

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "WifiSettings.APListAdapter"

    const-string/jumbo v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
