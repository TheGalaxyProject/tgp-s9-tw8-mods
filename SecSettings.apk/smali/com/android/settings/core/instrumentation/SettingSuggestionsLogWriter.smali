.class public Lcom/android/settings/core/instrumentation/SettingSuggestionsLogWriter;
.super Ljava/lang/Object;
.source "SettingSuggestionsLogWriter.java"

# interfaces
.implements Lcom/android/settings/core/instrumentation/LogWriter;


# instance fields
.field private mEventStore:Lcom/android/settings/dashboard/suggestions/EventStore;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Landroid/content/Context;II)V
    .registers 4

    return-void
.end method

.method public varargs action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/core/instrumentation/SettingSuggestionsLogWriter;->mEventStore:Lcom/android/settings/dashboard/suggestions/EventStore;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/settings/dashboard/suggestions/EventStore;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/suggestions/EventStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/core/instrumentation/SettingSuggestionsLogWriter;->mEventStore:Lcom/android/settings/dashboard/suggestions/EventStore;

    :cond_b
    packed-switch p2, :pswitch_data_2a

    :goto_e
    :pswitch_e
    return-void

    :pswitch_f
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/SettingSuggestionsLogWriter;->mEventStore:Lcom/android/settings/dashboard/suggestions/EventStore;

    const-string/jumbo v1, "shown"

    invoke-virtual {v0, p3, v1}, Lcom/android/settings/dashboard/suggestions/EventStore;->writeEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :pswitch_18
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/SettingSuggestionsLogWriter;->mEventStore:Lcom/android/settings/dashboard/suggestions/EventStore;

    const-string/jumbo v1, "dismissed"

    invoke-virtual {v0, p3, v1}, Lcom/android/settings/dashboard/suggestions/EventStore;->writeEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :pswitch_21
    iget-object v0, p0, Lcom/android/settings/core/instrumentation/SettingSuggestionsLogWriter;->mEventStore:Lcom/android/settings/dashboard/suggestions/EventStore;

    const-string/jumbo v1, "clicked"

    invoke-virtual {v0, p3, v1}, Lcom/android/settings/dashboard/suggestions/EventStore;->writeEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :pswitch_data_2a
    .packed-switch 0x180
        :pswitch_f
        :pswitch_e
        :pswitch_21
        :pswitch_18
    .end packed-switch
.end method

.method public action(Landroid/content/Context;IZ)V
    .registers 4

    return-void
.end method

.method public varargs action(Landroid/content/Context;I[Landroid/util/Pair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public actionWithSource(Landroid/content/Context;II)V
    .registers 4

    return-void
.end method

.method public count(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public hidden(Landroid/content/Context;I)V
    .registers 3

    return-void
.end method

.method public histogram(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public visible(Landroid/content/Context;II)V
    .registers 4

    return-void
.end method
