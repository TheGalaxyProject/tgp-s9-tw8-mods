.class Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;
.super Ljava/lang/Object;
.source "HwrLanguagePackManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateLanguageManagerListener"
.end annotation


# instance fields
.field private mListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)V

    return-void
.end method


# virtual methods
.method addListener(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onComplete(I)V
    .registers 14

    const/4 v11, -0x1

    if-nez p1, :cond_7d

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update complete: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I
    invoke-static {v9}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$300()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I
    invoke-static {v8}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;

    invoke-interface {v6}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->getAvailableLanguage()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_3a
    if-lt v3, v2, :cond_c8

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I
    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$300()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_11f

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageList:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    if-nez v7, :cond_169

    :goto_56
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    new-instance v8, Ljava/util/HashMap;

    iget-object v9, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageListNew:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    # setter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageList:Ljava/util/HashMap;
    invoke-static {v7, v8}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$402(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_174

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # setter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I
    invoke-static {v7, v11}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$202(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;I)I

    return-void

    :cond_7d
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageListNew:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_be

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update failure"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I
    invoke-static {v9}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # setter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I
    invoke-static {v7, v11}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$202(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;I)I

    return-void

    :cond_be
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    invoke-interface {v5, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    goto :goto_8c

    :cond_c8
    aget-object v4, v1, v3

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageListNew:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_ed

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageListNew:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-interface {v6, v4}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->add(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V

    :goto_e9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3a

    :cond_ed
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageListNew:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageList:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-interface {v6, v4}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    move-result-object v10

    invoke-direct {v9, v7, v10}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V

    invoke-virtual {v8, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageListNew:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mInstance:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$500()Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->setSpenLanguagePackManager(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)V

    goto :goto_e9

    :cond_11f
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # operator++ for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I
    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$208(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$300()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_147

    :goto_12f
    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageManagers:Ljava/util/ArrayList;
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$300()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I
    invoke-static {v8}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mServerConnection:Z
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$600()Z

    move-result v8

    invoke-interface {v7, p0, v8}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;->update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V

    return-void

    :cond_147
    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update language list progress: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mUpdateProgress:I
    invoke-static {v9}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12f

    :cond_169
    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager$UpdateLanguageManagerListener;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    # getter for: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->mLanguageList:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;->access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_56

    :cond_174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    invoke-interface {v5, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    goto/16 :goto_6c
.end method
