.class Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;
.super Landroid/widget/BaseAdapter;
.source "FaceWidgetDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;,
        Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;,
        Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$OnCheckChangeListener;
    }
.end annotation


# instance fields
.field private faceWidgetsItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDragEnabled:Z

.field private mListener:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$OnCheckChangeListener;

.field private mReorderMode:Z

.field private tempString:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$OnCheckChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mListener:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$OnCheckChangeListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mReorderMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mDragEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createDbKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "add_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    const-string/jumbo v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string/jumbo v1, ""

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_18} :catch_19

    :goto_18
    return-object v1

    :catch_19
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_18
.end method

.method public static getInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, ""

    const-string/jumbo v1, "servicebox_music"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-nez p2, :cond_3c

    const v1, 0x7f120607

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    const-string/jumbo v1, "servicebox_calendar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    if-nez p2, :cond_40

    const v1, 0x7f121bf8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_29
    const-string/jumbo v1, "servicebox_alarm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    if-nez p2, :cond_44

    const v1, 0x7f12128f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_3c
    const-string/jumbo v0, "add_info_music_control"

    goto :goto_15

    :cond_40
    const-string/jumbo v0, "add_info_today_schedule"

    goto :goto_15

    :cond_44
    const-string/jumbo v0, "add_info_alarm"

    goto :goto_15

    :cond_48
    if-nez p2, :cond_4f

    invoke-static {p0, p1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_4f
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->createDbKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method private makeDBSet(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->tempString:Ljava/lang/String;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->tempString:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_d
    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->tempString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->tempString:Ljava/lang/String;

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->tempString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->tempString:Ljava/lang/String;

    return-void

    :cond_3d
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private saveListOrder()V
    .registers 6

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->tempString:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_20

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->makeDBSet(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_20
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "face_widget_order"

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->tempString:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->setChecked(Z)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChecked(I)Z
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getChecked()Z

    move-result v1

    return v1
.end method

.method public getCount()I
    .registers 3

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDragEnabled()Z
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mReorderMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_13

    :cond_d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mDragEnabled:Z

    :goto_10
    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mDragEnabled:Z

    return v1

    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mDragEnabled:Z

    goto :goto_10
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_16
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPositionByKey(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 v1, -0x1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v5, 0x0

    if-nez p2, :cond_5b

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d00ff

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_18
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;->getFaceWidgetDragCell()Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setLabelAndDescription(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mReorderMode:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setShowCheckbox(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setChecked(Z)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mReorderMode:Z

    if-eqz v3, :cond_62

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setClickable(Z)V

    :goto_47
    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->getSwitch()Landroid/widget/Switch;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$2;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$2;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getDragEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setDragHandlerPadding(Z)V

    return-object p2

    :cond_5b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;

    goto :goto_18

    :cond_62
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setClickable(Z)V

    new-instance v3, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_47
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method moveItem(II)V
    .registers 10

    const/4 v6, 0x0

    if-ltz p1, :cond_1e

    if-ltz p2, :cond_1e

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_17
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->saveListOrder()V

    return-void

    :cond_1e
    const-string/jumbo v1, "LocaleDragAndDropAdapter"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "Negative position in moveItem %d -> %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public setChecked(IZ)V
    .registers 8

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_22

    :goto_1e
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_22
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method setReorderMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mReorderMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->notifyDataSetChanged()V

    return-void
.end method
