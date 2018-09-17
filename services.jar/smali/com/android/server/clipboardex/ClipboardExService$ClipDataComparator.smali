.class Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;
.super Ljava/lang/Object;
.source "ClipboardExService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipDataComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/content/clipboard/data/SemClipData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/data/SemClipData;)I
    .registers 9

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p2, :cond_8

    if-nez p1, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    if-nez p2, :cond_d

    if-eqz p1, :cond_d

    return v1

    :cond_d
    if-eqz p2, :cond_12

    if-nez p1, :cond_12

    return v0

    :cond_12
    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1f

    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1e
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast p2, Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService$ClipDataComparator;->compare(Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result v0

    return v0
.end method
