.class Lcom/android/settings/applications/RunningState$1;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/applications/RunningState$MergedItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/RunningState$MergedItem;Lcom/android/settings/applications/RunningState$MergedItem;)I
    .registers 15

    const/16 v11, 0x190

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    iget v8, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v9, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    if-eq v8, v9, :cond_26

    iget v8, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget-object v9, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    iget v9, v9, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v8, v9, :cond_14

    return v6

    :cond_14
    iget v8, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget-object v9, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    iget v9, v9, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v8, v9, :cond_1d

    return v7

    :cond_1d
    iget v8, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v9, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    if-ge v8, v9, :cond_24

    :goto_23
    return v6

    :cond_24
    move v6, v7

    goto :goto_23

    :cond_26
    iget-object v8, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v9, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-ne v8, v9, :cond_40

    iget-object v7, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iget-object v8, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    if-ne v7, v8, :cond_33

    return v10

    :cond_33
    iget-object v7, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    if-eqz v7, :cond_3f

    iget-object v6, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    :cond_3f
    return v6

    :cond_40
    iget-object v8, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v8, :cond_45

    return v6

    :cond_45
    iget-object v8, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v8, :cond_4a

    return v7

    :cond_4a
    iget-object v8, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v2, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v8, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v5, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v8, v11, :cond_61

    const/4 v1, 0x1

    :goto_57
    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v8, v11, :cond_63

    const/4 v4, 0x1

    :goto_5c
    if-eq v1, v4, :cond_67

    if-eqz v1, :cond_65

    :goto_60
    return v7

    :cond_61
    const/4 v1, 0x0

    goto :goto_57

    :cond_63
    const/4 v4, 0x0

    goto :goto_5c

    :cond_65
    move v7, v6

    goto :goto_60

    :cond_67
    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_7a

    const/4 v0, 0x1

    :goto_6e
    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_7c

    const/4 v3, 0x1

    :goto_75
    if-eq v0, v3, :cond_80

    if-eqz v0, :cond_7e

    :goto_79
    return v6

    :cond_7a
    const/4 v0, 0x0

    goto :goto_6e

    :cond_7c
    const/4 v3, 0x0

    goto :goto_75

    :cond_7e
    move v6, v7

    goto :goto_79

    :cond_80
    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-eq v8, v9, :cond_8f

    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-ge v8, v9, :cond_8d

    :goto_8c
    return v6

    :cond_8d
    move v6, v7

    goto :goto_8c

    :cond_8f
    iget-object v8, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v8, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iget-object v9, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v9, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-ne v8, v9, :cond_9a

    return v10

    :cond_9a
    iget-object v8, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v8, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-nez v8, :cond_a1

    return v7

    :cond_a1
    iget-object v7, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v7, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-nez v7, :cond_a8

    return v6

    :cond_a8
    iget-object v6, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v7, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/settings/applications/RunningState$MergedItem;

    check-cast p2, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/RunningState$1;->compare(Lcom/android/settings/applications/RunningState$MergedItem;Lcom/android/settings/applications/RunningState$MergedItem;)I

    move-result v0

    return v0
.end method
