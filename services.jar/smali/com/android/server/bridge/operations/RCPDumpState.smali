.class public Lcom/android/server/bridge/operations/RCPDumpState;
.super Ljava/lang/Object;
.source "RCPDumpState.java"


# static fields
.field private static final CONTACT_ACCOUNT_TYPE_KNOX:Ljava/lang/String; = "vnd.sec.contact.phone_knox"

.field private static final CONTACT_ACCOUNT_TYPE_KNOX2:Ljava/lang/String; = "vnd.sec.contact.phone_knox2"

.field private static final CONTACT_ACCOUNT_TYPE_KNOX3:Ljava/lang/String; = "vnd.sec.contact.phone_knox3"

.field private static final CONTACT_ACCOUNT_TYPE_PERSONAL:Ljava/lang/String; = "vnd.sec.contact.phone_personal"

.field private static final CONTACT_ACCOUNT_TYPE_SECUREFOLDER:Ljava/lang/String; = "vnd.sec.contact.phone_knox_securefolder"

.field private static final EVENT_ACCOUNT_NAME:Ljava/lang/String; = "calendar_personal"

.field private static final PROVIDER_CALENDNAR:Ljava/lang/String; = "Calendar"

.field private static final PROVIDER_CONTACT:Ljava/lang/String; = "Contact"

.field private static final TABLE_EVENT:Ljava/lang/String; = "Event"

.field private static final TABLE_GROUPS:Ljava/lang/String; = "Group"

.field private static final TABLE_RAW_CONTACT:Ljava/lang/String; = "Raw_Contact"

.field private static final TABLE_TASK:Ljava/lang/String; = "Task"

.field private static final TASK_ACCOUNT_NAME:Ljava/lang/String; = "task_personal_"

.field private static mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;


# instance fields
.field private final TAG:Ljava/lang/String;

.field mContainerUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field mOwnerUri:Landroid/net/Uri;

.field mQueryUri:Landroid/net/Uri;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/server/bridge/operations/RCPDumpState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mUserManager:Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private dumpStateEvents(Ljava/io/PrintWriter;II)V
    .registers 21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateEvents , mSourceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", DestinationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v5, v4

    const-string/jumbo v8, "original_id ASC, _id ASC"

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    if-eqz p2, :cond_1b3

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    :goto_4f
    :try_start_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACCOUNT_NAME NOT LIKE ? AND DELETED=? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/bridge/operations/RCPDumpState;->get_exCalendarId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const-string/jumbo v3, "calendar_personal%"

    const/4 v4, 0x0

    aput-object v3, v7, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x1

    aput-object v3, v7, v4

    if-nez p2, :cond_1c3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_84
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_d3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateEvents ,No of Original Events from Source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Source Events ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_d3} :catch_1cd
    .catchall {:try_start_4f .. :try_end_d3} :catchall_1d8

    :cond_d3
    if-eqz v16, :cond_d8

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_d8
    :goto_d8
    :try_start_d8
    const-string/jumbo v6, "ACCOUNT_NAME = ? AND DELETED=? "

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "calendar_personal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v7, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x1

    aput-object v3, v7, v4

    if-nez p3, :cond_1df

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_156

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_156

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateEvents ,No of Synced Events to Destination"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Destination Events ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_156} :catch_1e9
    .catchall {:try_start_d8 .. :try_end_156} :catchall_1f4

    :cond_156
    if-eqz v16, :cond_15b

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_15b
    :goto_15b
    :try_start_15b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "Calendar"

    const-string/jumbo v4, "Event"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/bridge/operations/RCPDumpState;->getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_1ad

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1ad

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateEvents ,No of Events records in RCP local db  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "RCP local db (SourceId:DestinationId) :  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_1ad} :catch_1fb
    .catchall {:try_start_15b .. :try_end_1ad} :catchall_205

    :cond_1ad
    if-eqz v16, :cond_1b2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1b2
    :goto_1b2
    return-void

    :cond_1b3
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    goto/16 :goto_4f

    :cond_1c3
    :try_start_1c3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1cb} :catch_1cd
    .catchall {:try_start_1c3 .. :try_end_1cb} :catchall_1d8

    goto/16 :goto_84

    :catch_1cd
    move-exception v15

    :try_start_1ce
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d1
    .catchall {:try_start_1ce .. :try_end_1d1} :catchall_1d8

    if-eqz v16, :cond_d8

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d8

    :catchall_1d8
    move-exception v3

    if-eqz v16, :cond_1de

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1de
    throw v3

    :cond_1df
    :try_start_1df
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1e7} :catch_1e9
    .catchall {:try_start_1df .. :try_end_1e7} :catchall_1f4

    goto/16 :goto_107

    :catch_1e9
    move-exception v15

    :try_start_1ea
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1ed
    .catchall {:try_start_1ea .. :try_end_1ed} :catchall_1f4

    if-eqz v16, :cond_15b

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_15b

    :catchall_1f4
    move-exception v3

    if-eqz v16, :cond_1fa

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1fa
    throw v3

    :catch_1fb
    move-exception v15

    :try_start_1fc
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1ff
    .catchall {:try_start_1fc .. :try_end_1ff} :catchall_205

    if-eqz v16, :cond_1b2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_1b2

    :catchall_205
    move-exception v3

    if-eqz v16, :cond_20b

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_20b
    throw v3
.end method

.method private dumpStateGroups(Ljava/io/PrintWriter;II)V
    .registers 23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateGroups , mSourceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", DestinationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v5, v4

    const-string/jumbo v8, "_id ASC"

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    if-eqz p2, :cond_1c2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    :goto_50
    :try_start_50
    new-instance v18, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v3

    if-eqz v3, :cond_1d2

    const-string/jumbo v6, "account_type<>? AND account_type NOT LIKE ? AND _id NOT IN (?,?,?,?)  AND deleted=?"

    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v3, "vnd.sec.contact.phone_personal"

    const/4 v4, 0x0

    aput-object v3, v17, v4

    const-string/jumbo v3, "vnd.sec.contact.phone_knox%"

    const/4 v4, 0x1

    aput-object v3, v17, v4

    const-string/jumbo v3, "1"

    const/4 v4, 0x2

    aput-object v3, v17, v4

    const-string/jumbo v3, "2"

    const/4 v4, 0x3

    aput-object v3, v17, v4

    const-string/jumbo v3, "3"

    const/4 v4, 0x4

    aput-object v3, v17, v4

    const-string/jumbo v3, "4"

    const/4 v4, 0x5

    aput-object v3, v17, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x6

    aput-object v3, v17, v4

    move-object/from16 v7, v17

    :goto_95
    if-nez p2, :cond_202

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_9f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_ee

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_ee

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateGroups ,No of Original Groups from Source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Source Group ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_ee} :catch_20c
    .catchall {:try_start_50 .. :try_end_ee} :catchall_217

    :cond_ee
    if-eqz v16, :cond_f3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_f3
    :goto_f3
    move-object/from16 v17, v7

    :try_start_f5
    const-string/jumbo v6, "account_type= ?  AND deleted=?"

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/bridge/operations/RCPDumpState;->getContactAccountType(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v7, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x1

    aput-object v3, v7, v4
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_10c} :catch_250
    .catchall {:try_start_f5 .. :try_end_10c} :catchall_233

    if-nez p3, :cond_21e

    :try_start_10e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_165

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_165

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateGroups ,No of Synced Groups to Destination "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Destination Group ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_165} :catch_228
    .catchall {:try_start_10e .. :try_end_165} :catchall_24e

    :cond_165
    if-eqz v16, :cond_16a

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_16a
    :goto_16a
    :try_start_16a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "Contact"

    const-string/jumbo v4, "Group"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/bridge/operations/RCPDumpState;->getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_1bc

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1bc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateGroups ,No of Group records in RCP local db  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "RCP local db (SourceId:DestinationId) :  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_1bc} :catch_23c
    .catchall {:try_start_16a .. :try_end_1bc} :catchall_247

    :cond_1bc
    if-eqz v16, :cond_1c1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1c1
    :goto_1c1
    return-void

    :cond_1c2
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    goto/16 :goto_50

    :cond_1d2
    :try_start_1d2
    const-string/jumbo v6, "account_type<>? AND account_type NOT LIKE ? AND _id NOT IN (?,?,?)  AND deleted=?"

    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v3, "vnd.sec.contact.phone_personal"

    const/4 v4, 0x0

    aput-object v3, v17, v4

    const-string/jumbo v3, "vnd.sec.contact.phone_knox%"

    const/4 v4, 0x1

    aput-object v3, v17, v4

    const-string/jumbo v3, "1"

    const/4 v4, 0x2

    aput-object v3, v17, v4

    const-string/jumbo v3, "2"

    const/4 v4, 0x3

    aput-object v3, v17, v4

    const-string/jumbo v3, "3"

    const/4 v4, 0x4

    aput-object v3, v17, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x5

    aput-object v3, v17, v4

    move-object/from16 v7, v17

    goto/16 :goto_95

    :cond_202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;
    :try_end_20a
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_20a} :catch_20c
    .catchall {:try_start_1d2 .. :try_end_20a} :catchall_217

    goto/16 :goto_9f

    :catch_20c
    move-exception v15

    :try_start_20d
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_210
    .catchall {:try_start_20d .. :try_end_210} :catchall_217

    if-eqz v16, :cond_f3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_f3

    :catchall_217
    move-exception v3

    if-eqz v16, :cond_21d

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_21d
    throw v3

    :cond_21e
    :try_start_21e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_21e .. :try_end_226} :catch_228
    .catchall {:try_start_21e .. :try_end_226} :catchall_24e

    goto/16 :goto_116

    :catch_228
    move-exception v15

    :goto_229
    :try_start_229
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_22c
    .catchall {:try_start_229 .. :try_end_22c} :catchall_24e

    if-eqz v16, :cond_16a

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_16a

    :catchall_233
    move-exception v3

    move-object/from16 v7, v17

    :goto_236
    if-eqz v16, :cond_23b

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_23b
    throw v3

    :catch_23c
    move-exception v15

    :try_start_23d
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_240
    .catchall {:try_start_23d .. :try_end_240} :catchall_247

    if-eqz v16, :cond_1c1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1c1

    :catchall_247
    move-exception v3

    if-eqz v16, :cond_24d

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_24d
    throw v3

    :catchall_24e
    move-exception v3

    goto :goto_236

    :catch_250
    move-exception v15

    move-object/from16 v7, v17

    goto :goto_229
.end method

.method private dumpStateRawContacts(Ljava/io/PrintWriter;II)V
    .registers 22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateRawContacts , mSourceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", DestinationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v5, v4

    const-string/jumbo v8, "_id ASC"

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    if-eqz p2, :cond_196

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    :goto_51
    :try_start_51
    const-string/jumbo v6, "account_type<>? AND account_type NOT LIKE ? AND deleted=?"

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const-string/jumbo v3, "vnd.sec.contact.phone_personal"

    const/4 v4, 0x0

    aput-object v3, v7, v4

    const-string/jumbo v3, "vnd.sec.contact.phone_knox%"

    const/4 v4, 0x1

    aput-object v3, v7, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x2

    aput-object v3, v7, v4
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_69} :catch_1fb
    .catchall {:try_start_51 .. :try_end_69} :catchall_1bb

    if-nez p2, :cond_1a6

    :try_start_6b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_73
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_c2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_c2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateRawContacts ,No of Original Raw_Contacts from Source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Source Raw_Contacts ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_c2} :catch_1b0
    .catchall {:try_start_6b .. :try_end_c2} :catchall_1f9

    :cond_c2
    if-eqz v16, :cond_c7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_c7
    :goto_c7
    move-object/from16 v17, v7

    :try_start_c9
    const-string/jumbo v6, "account_type= ? AND deleted=?"

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/bridge/operations/RCPDumpState;->getContactAccountType(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v7, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x1

    aput-object v3, v7, v4
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_e0} :catch_1f5
    .catchall {:try_start_c9 .. :try_end_e0} :catchall_1d9

    if-nez p3, :cond_1c4

    :try_start_e2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_ea
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_139

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_139

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateRawContacts ,No of Synced Raw_Contacts to Destination "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Destination Raw_Contacts ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_139} :catch_1ce
    .catchall {:try_start_e2 .. :try_end_139} :catchall_1f3

    :cond_139
    if-eqz v16, :cond_13e

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_13e
    :goto_13e
    :try_start_13e
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "Contact"

    const-string/jumbo v4, "Raw_Contact"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/bridge/operations/RCPDumpState;->getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_190

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_190

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateRawContacts ,No of Raw_Contacts records in RCP local db  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "RCP local db (SourceId:DestinationId) :  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_190} :catch_1e2
    .catchall {:try_start_13e .. :try_end_190} :catchall_1ec

    :cond_190
    if-eqz v16, :cond_195

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_195
    :goto_195
    return-void

    :cond_196
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    goto/16 :goto_51

    :cond_1a6
    :try_start_1a6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1ae} :catch_1b0
    .catchall {:try_start_1a6 .. :try_end_1ae} :catchall_1f9

    goto/16 :goto_73

    :catch_1b0
    move-exception v15

    :goto_1b1
    :try_start_1b1
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b4
    .catchall {:try_start_1b1 .. :try_end_1b4} :catchall_1f9

    if-eqz v16, :cond_c7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c7

    :catchall_1bb
    move-exception v3

    move-object/from16 v7, v17

    :goto_1be
    if-eqz v16, :cond_1c3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1c3
    throw v3

    :cond_1c4
    :try_start_1c4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1cc} :catch_1ce
    .catchall {:try_start_1c4 .. :try_end_1cc} :catchall_1f3

    goto/16 :goto_ea

    :catch_1ce
    move-exception v15

    :goto_1cf
    :try_start_1cf
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1d2
    .catchall {:try_start_1cf .. :try_end_1d2} :catchall_1f3

    if-eqz v16, :cond_13e

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_13e

    :catchall_1d9
    move-exception v3

    move-object/from16 v7, v17

    :goto_1dc
    if-eqz v16, :cond_1e1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1e1
    throw v3

    :catch_1e2
    move-exception v15

    :try_start_1e3
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e6
    .catchall {:try_start_1e3 .. :try_end_1e6} :catchall_1ec

    if-eqz v16, :cond_195

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_195

    :catchall_1ec
    move-exception v3

    if-eqz v16, :cond_1f2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1f2
    throw v3

    :catchall_1f3
    move-exception v3

    goto :goto_1dc

    :catch_1f5
    move-exception v15

    move-object/from16 v7, v17

    goto :goto_1cf

    :catchall_1f9
    move-exception v3

    goto :goto_1be

    :catch_1fb
    move-exception v15

    move-object/from16 v7, v17

    goto :goto_1b1
.end method

.method private dumpStateTasks(Ljava/io/PrintWriter;II)V
    .registers 21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateTasks , mSourceId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", DestinationId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v5, v4

    const-string/jumbo v8, "_id ASC"

    const-string/jumbo v3, "content://com.android.calendar/syncTasks"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    if-eqz p2, :cond_1a1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    :goto_56
    :try_start_56
    const-string/jumbo v6, "_sync_account NOT LIKE ? AND DELETED=?"

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const-string/jumbo v3, "task_personal_%"

    const/4 v4, 0x0

    aput-object v3, v7, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x1

    aput-object v3, v7, v4

    if-nez p2, :cond_1b3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_72
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_c1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_c1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateTasks ,No of Original Tasks from Source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Source Tasks ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_c1} :catch_1bd
    .catchall {:try_start_56 .. :try_end_c1} :catchall_1c8

    :cond_c1
    if-eqz v16, :cond_c6

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_c6
    :goto_c6
    :try_start_c6
    const-string/jumbo v6, "_sync_account = ? AND DELETED=?"

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "task_personal_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v7, v4

    const-string/jumbo v3, "0"

    const/4 v4, 0x1

    aput-object v3, v7, v4

    if-nez p3, :cond_1cf

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_f5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_144

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_144

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateTasks ,No of Synced Tasks to Destination "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "Destination Tasks ID\'s : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_144} :catch_1d9
    .catchall {:try_start_c6 .. :try_end_144} :catchall_1e4

    :cond_144
    if-eqz v16, :cond_149

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_149
    :goto_149
    :try_start_149
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "Calendar"

    const-string/jumbo v4, "Task"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/bridge/operations/RCPDumpState;->getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_19b

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_19b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpStateTasks ,No of tasks records in RCP local db  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "RCP local db (SourceId:DestinationId) :  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_19b} :catch_1eb
    .catchall {:try_start_149 .. :try_end_19b} :catchall_1f5

    :cond_19b
    if-eqz v16, :cond_1a0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1a0
    :goto_1a0
    return-void

    :cond_1a1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v3, v1}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    goto/16 :goto_56

    :cond_1b3
    :try_start_1b3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_1bb} :catch_1bd
    .catchall {:try_start_1b3 .. :try_end_1bb} :catchall_1c8

    goto/16 :goto_72

    :catch_1bd
    move-exception v15

    :try_start_1be
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1c1
    .catchall {:try_start_1be .. :try_end_1c1} :catchall_1c8

    if-eqz v16, :cond_c6

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c6

    :catchall_1c8
    move-exception v3

    if-eqz v16, :cond_1ce

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1ce
    throw v3

    :cond_1cf
    :try_start_1cf
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1d7} :catch_1d9
    .catchall {:try_start_1cf .. :try_end_1d7} :catchall_1e4

    goto/16 :goto_f5

    :catch_1d9
    move-exception v15

    :try_start_1da
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1dd
    .catchall {:try_start_1da .. :try_end_1dd} :catchall_1e4

    if-eqz v16, :cond_149

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_149

    :catchall_1e4
    move-exception v3

    if-eqz v16, :cond_1ea

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1ea
    throw v3

    :catch_1eb
    move-exception v15

    :try_start_1ec
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1ef
    .catchall {:try_start_1ec .. :try_end_1ef} :catchall_1f5

    if-eqz v16, :cond_1a0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_1a0

    :catchall_1f5
    move-exception v3

    if-eqz v16, :cond_1fb

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1fb
    throw v3
.end method

.method private getContactAccountType(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_7

    const-string/jumbo v0, "vnd.sec.contact.phone_personal"

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    iget-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string/jumbo v0, "vnd.sec.contact.phone_knox"

    goto :goto_6

    :cond_17
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v2

    if-eqz v2, :cond_21

    const-string/jumbo v0, "vnd.sec.contact.phone_knox2"

    goto :goto_6

    :cond_21
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string/jumbo v0, "vnd.sec.contact.phone_knox3"

    goto :goto_6

    :cond_2b
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v0, "vnd.sec.contact.phone_knox_securefolder"

    goto :goto_6
.end method

.method public static getInstance(Landroid/content/Context;Ljava/io/PrintWriter;)Lcom/android/server/bridge/operations/RCPDumpState;
    .registers 3

    sget-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/bridge/operations/RCPDumpState;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/RCPDumpState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    :cond_b
    sget-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    return-object v0
.end method

.method private getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 11

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_60

    move v1, p2

    :goto_6
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_62

    const-string/jumbo v0, "com.samsung.knox.securefolder.rcpcomponents.sync.rcpdumpstateprovider"

    :goto_f
    const-string/jumbo v4, "Contact"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    const-string/jumbo v4, "Group"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    if-nez p2, :cond_66

    const-string/jumbo v3, "ownergroup"

    :cond_26
    :goto_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    :cond_60
    move v1, p1

    goto :goto_6

    :cond_62
    const-string/jumbo v0, "com.samsung.android.knox.containeragent.rcpcomponents.sync.rcpdumpstateprovider"

    goto :goto_f

    :cond_66
    const-string/jumbo v3, "containergroup"

    goto :goto_26

    :cond_6a
    const-string/jumbo v4, "Raw_Contact"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    if-nez p2, :cond_79

    const-string/jumbo v3, "ownerrawcontact"

    goto :goto_26

    :cond_79
    const-string/jumbo v3, "containerrawcontact"

    goto :goto_26

    :cond_7d
    const-string/jumbo v4, "Calendar"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string/jumbo v4, "Event"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    if-nez p2, :cond_95

    const-string/jumbo v3, "ownerevent"

    goto :goto_26

    :cond_95
    const-string/jumbo v3, "containerevent"

    goto :goto_26

    :cond_99
    const-string/jumbo v4, "Task"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    if-nez p2, :cond_a9

    const-string/jumbo v3, "ownertask"

    goto/16 :goto_26

    :cond_a9
    const-string/jumbo v3, "containertask"

    goto/16 :goto_26
.end method

.method private get_exCalendarId(I)Ljava/lang/String;
    .registers 11

    const-string/jumbo v7, ""

    const/4 v1, 0x0

    if-nez p1, :cond_c5

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    :goto_8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v2, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    :try_start_14
    const-string/jumbo v0, "JAPAN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    const-string/jumbo v3, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND name is \'legalHoliday\')"

    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :cond_31
    :goto_31
    if-eqz v8, :cond_a6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a6

    const-string/jumbo v7, "AND calendar_id IN ("

    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " id count fetched "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    invoke-interface {v8}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_149

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_80
    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " calendar "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_59

    const-string/jumbo v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_a6
    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " final calendar "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_14 .. :try_end_bf} :catchall_158

    if-eqz v8, :cond_c4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c4
    return-object v7

    :cond_c5
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_8

    :cond_cd
    :try_start_cd
    const-string/jumbo v0, "TAIWAN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string/jumbo v3, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND name is \'legalHoliday\')"

    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_31

    :cond_ec
    const-string/jumbo v0, "HONGKONG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    const-string/jumbo v3, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND name is \'legalHoliday\')"

    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_31

    :cond_10b
    const-string/jumbo v0, "CHINA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    const-string/jumbo v3, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND name IN (\'legalHoliday\',\'24SolarTerms\'))"

    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_31

    :cond_12a
    const-string/jumbo v0, "KOREA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string/jumbo v3, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND name IN (\'legalHoliday\',\'legalSubstHoliday\'))"

    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_31

    :cond_149
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_155
    .catchall {:try_start_cd .. :try_end_155} :catchall_158

    move-result-object v7

    goto/16 :goto_80

    :catchall_158
    move-exception v0

    if-eqz v8, :cond_15e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_15e
    throw v0
.end method

.method private insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return-object p1

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    .registers 5

    const/4 v1, 0x0

    :goto_1
    if-eqz p2, :cond_1d

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1d

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, " , "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1d
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    .registers 6

    const/4 v2, 0x0

    :goto_1
    if-eqz p2, :cond_41

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_48

    :cond_41
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_48
    const-string/jumbo v0, " , "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dumpStateCalendar(Ljava/io/PrintWriter;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateEvents(Ljava/io/PrintWriter;II)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateTasks(Ljava/io/PrintWriter;II)V

    return-void
.end method

.method public dumpStateContact(Ljava/io/PrintWriter;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateGroups(Ljava/io/PrintWriter;II)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateRawContacts(Ljava/io/PrintWriter;II)V

    return-void
.end method

.method public dumpStateFileOpsTable(Ljava/io/PrintWriter;I)V
    .registers 11

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_e4

    const-string/jumbo v6, "com.samsung.knox.securefolder.rcpcomponents.move.provider.knoxcontentmgrdbprovider"

    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_e3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e0

    :cond_4e
    const-string/jumbo v0, "timeStamp"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "operation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " ret:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "resultCode"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " srcUri:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "srcUri"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " destUri:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "destUri"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " src:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "source"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " dest:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "destination"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4e

    :cond_e0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_e3
    return-void

    :cond_e4
    const-string/jumbo v6, "com.samsung.android.knox.containeragent.rcpcomponents.move.provider.knoxcontentmgrdbprovider"

    goto/16 :goto_b
.end method
