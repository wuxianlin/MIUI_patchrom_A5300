.class public Landroid/os/MessageLogger;
.super Ljava/lang/Object;
.source "MessageLogger.java"

# interfaces
.implements Landroid/util/Printer;


# static fields
.field protected static final FLUSHOUT_SIZE:I = 0x800

.field protected static final MESSAGE_SIZE:I = 0x28

.field private static final TAG:Ljava/lang/String; = "MessageLogger"

.field protected static sEnableLooperLog:Z

.field protected static sMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/MessageLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLastRecord:Ljava/lang/String;

.field private mLastRecordDateTime:J

.field private mLastRecordKernelTime:J

.field private mMessageHistoryRecord:Ljava/util/LinkedList;

.field private mMessageTimeRecord:Ljava/util/LinkedList;

.field private mMsgCnt:J

.field protected mName:Ljava/lang/String;

.field private mNonSleepLastRecordKernelTime:J

.field private mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

.field private mNonSleepWallStart:J

.field private mNonSleepWallTime:J

.field private mState:I

.field private mWallStart:J

.field private mWallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/MessageLogger;->sMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/MessageLogger;->mState:I

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/MessageLogger;->mMsgCnt:J

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/MessageLogger;->mLastRecord:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Landroid/os/MessageLogger;->mName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method protected static addTimeToList(Ljava/util/LinkedList;JJ)V
    .locals 1
    .parameter "mList"
    .parameter "startTime"
    .parameter "durationTime"

    .prologue
    .line 69
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public static dumpAllMessageHistory()V
    .locals 2

    .prologue
    .line 61
    sget-object v1, Landroid/os/MessageLogger;->sMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 66
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/MessageLogger;>;"
    :cond_0
    return-void

    .line 63
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/MessageLogger;>;"
    :cond_1
    sget-object v1, Landroid/os/MessageLogger;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/MessageLogger;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/MessageLogger;

    invoke-virtual {v1}, Landroid/os/MessageLogger;->dump()V

    goto :goto_0
.end method

.method public static dumpMessageHistory(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 53
    sget-object v1, Landroid/os/MessageLogger;->sMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    sget-object v1, Landroid/os/MessageLogger;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageLogger;

    .line 56
    .local v0, logger:Landroid/os/MessageLogger;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/os/MessageLogger;->dump()V

    goto :goto_0
.end method

.method protected static flushedOrNot(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .parameter "sb"
    .parameter "bl"

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x800

    if-le v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***Flushing, Current Size Is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bool:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "***TAIL\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const/4 p1, 0x1

    .line 120
    const-string v0, "MessageLogger"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    if-eqz p1, :cond_0

    .line 127
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static newMessageLogger(ZLjava/lang/String;)Landroid/os/MessageLogger;
    .locals 2
    .parameter "mValue"
    .parameter "name"

    .prologue
    .line 44
    sput-boolean p0, Landroid/os/MessageLogger;->sEnableLooperLog:Z

    .line 45
    sget-object v1, Landroid/os/MessageLogger;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    sget-object v1, Landroid/os/MessageLogger;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    new-instance v0, Landroid/os/MessageLogger;

    invoke-direct {v0, p1}, Landroid/os/MessageLogger;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, logger:Landroid/os/MessageLogger;
    sget-object v1, Landroid/os/MessageLogger;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-object v0
.end method

.method protected static sizeToIndex(I)I
    .locals 0
    .parameter "size"

    .prologue
    .line 112
    add-int/lit8 p0, p0, -0x1

    return p0
.end method


# virtual methods
.method public dump()V
    .locals 20

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    monitor-enter v15

    .line 133
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v14, 0x400

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 134
    .local v4, history:Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MSG HISTORY IN "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " THREAD:\n"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Current kernel time : "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v16, "ms\n"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v9, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 138
    .local v9, simpleDateFormat:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    if-nez v14, :cond_1

    const/4 v10, 0x0

    .line 139
    .local v10, sizeForMsgRecord:I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Landroid/os/MessageLogger;->mState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_0

    .line 140
    new-instance v2, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/os/MessageLogger;->mLastRecordDateTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 141
    .local v2, date:Ljava/util/Date;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/os/MessageLogger;->mLastRecordKernelTime:J

    move-wide/from16 v18, v0

    sub-long v11, v16, v18

    .line 142
    .local v11, spent:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/os/MessageLogger;->mNonSleepLastRecordKernelTime:J

    move-wide/from16 v18, v0

    sub-long v6, v16, v18

    .line 144
    .local v6, nonSleepSpent:J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Last record : "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Last record dispatching elapsedTime:"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " ms/upTime:"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " ms\n"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Last record dispatching time : "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v10, v10, -0x1

    .line 152
    .end local v2           #date:Ljava/util/Date;
    .end local v6           #nonSleepSpent:J
    .end local v11           #spent:J
    :cond_0
    const/4 v5, 0x0

    .line 153
    .local v5, msg:Ljava/lang/String;
    const/4 v13, 0x0

    .line 154
    .local v13, time:Ljava/lang/Long;
    const/4 v8, 0x0

    .line 155
    .local v8, nonSleepTime:Ljava/lang/Long;
    const/4 v3, 0x0

    .line 156
    .local v3, flushed:Z
    :goto_1
    if-lez v10, :cond_3

    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-static {v10}, Landroid/os/MessageLogger;->sizeToIndex(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #msg:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 158
    .restart local v5       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    invoke-static {v10}, Landroid/os/MessageLogger;->sizeToIndex(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #time:Ljava/lang/Long;
    check-cast v13, Ljava/lang/Long;

    .line 159
    .restart local v13       #time:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    invoke-static {v10}, Landroid/os/MessageLogger;->sizeToIndex(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #nonSleepTime:Ljava/lang/Long;
    check-cast v8, Ljava/lang/Long;

    .line 160
    .restart local v8       #nonSleepTime:Ljava/lang/Long;
    const-string v14, ">"

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 161
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 162
    .restart local v2       #date:Ljava/util/Date;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " from "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .end local v2           #date:Ljava/util/Date;
    :goto_2
    invoke-static {v4, v3}, Landroid/os/MessageLogger;->flushedOrNot(Ljava/lang/StringBuilder;Z)V

    .line 156
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 138
    .end local v3           #flushed:Z
    .end local v5           #msg:Ljava/lang/String;
    .end local v8           #nonSleepTime:Ljava/lang/Long;
    .end local v10           #sizeForMsgRecord:I
    .end local v13           #time:Ljava/lang/Long;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v10

    goto/16 :goto_0

    .line 165
    .restart local v3       #flushed:Z
    .restart local v5       #msg:Ljava/lang/String;
    .restart local v8       #nonSleepTime:Ljava/lang/Long;
    .restart local v10       #sizeForMsgRecord:I
    .restart local v13       #time:Ljava/lang/Long;
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " elapsedTime:"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " ms/upTime:"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " ms"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 172
    .end local v3           #flushed:Z
    .end local v4           #history:Ljava/lang/StringBuilder;
    .end local v5           #msg:Ljava/lang/String;
    .end local v8           #nonSleepTime:Ljava/lang/Long;
    .end local v9           #simpleDateFormat:Ljava/text/SimpleDateFormat;
    .end local v10           #sizeForMsgRecord:I
    .end local v13           #time:Ljava/lang/Long;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 170
    .restart local v3       #flushed:Z
    .restart local v4       #history:Ljava/lang/StringBuilder;
    .restart local v5       #msg:Ljava/lang/String;
    .restart local v8       #nonSleepTime:Ljava/lang/Long;
    .restart local v9       #simpleDateFormat:Ljava/text/SimpleDateFormat;
    .restart local v10       #sizeForMsgRecord:I
    .restart local v13       #time:Ljava/lang/Long;
    :cond_3
    if-nez v3, :cond_4

    .line 171
    :try_start_1
    const-string v14, "MessageLogger"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_4
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/MessageQueue;->dumpMessageQueue()V

    .line 176
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 8
    .parameter "s"

    .prologue
    .line 75
    iget-object v2, p0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    monitor-enter v2

    .line 76
    :try_start_0
    iget v1, p0, Landroid/os/MessageLogger;->mState:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/MessageLogger;->mState:I

    .line 77
    iget-object v1, p0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 78
    .local v0, size:I
    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Landroid/os/MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Landroid/os/MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Msg#:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/os/MessageLogger;->mMsgCnt:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    iget-wide v3, p0, Landroid/os/MessageLogger;->mMsgCnt:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/os/MessageLogger;->mMsgCnt:J

    .line 86
    iget-object v1, p0, Landroid/os/MessageLogger;->mMessageHistoryRecord:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/os/MessageLogger;->mLastRecordKernelTime:J

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/os/MessageLogger;->mNonSleepLastRecordKernelTime:J

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/os/MessageLogger;->mLastRecordDateTime:J

    .line 90
    iget v1, p0, Landroid/os/MessageLogger;->mState:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/MessageLogger;->mState:I

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/os/MessageLogger;->mWallStart:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Landroid/os/MessageLogger;->mWallTime:J

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/os/MessageLogger;->mNonSleepWallStart:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Landroid/os/MessageLogger;->mNonSleepWallTime:J

    .line 94
    iget-object v1, p0, Landroid/os/MessageLogger;->mMessageTimeRecord:Ljava/util/LinkedList;

    iget-wide v3, p0, Landroid/os/MessageLogger;->mWallStart:J

    iget-wide v5, p0, Landroid/os/MessageLogger;->mWallTime:J

    invoke-static {v1, v3, v4, v5, v6}, Landroid/os/MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 95
    iget-object v1, p0, Landroid/os/MessageLogger;->mNonSleepMessageTimeRecord:Ljava/util/LinkedList;

    iget-wide v3, p0, Landroid/os/MessageLogger;->mNonSleepWallStart:J

    iget-wide v5, p0, Landroid/os/MessageLogger;->mNonSleepWallTime:J

    invoke-static {v1, v3, v4, v5, v6}, Landroid/os/MessageLogger;->addTimeToList(Ljava/util/LinkedList;JJ)V

    .line 101
    :goto_0
    sget-boolean v1, Landroid/os/MessageLogger;->sEnableLooperLog:Z

    if-eqz v1, :cond_1

    .line 102
    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    const-string v1, "MessageLogger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Debugging_MessageLogger: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    :goto_1
    monitor-exit v2

    .line 109
    return-void

    .line 97
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/os/MessageLogger;->mWallStart:J

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/os/MessageLogger;->mNonSleepWallStart:J

    goto :goto_0

    .line 108
    .end local v0           #size:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 105
    .restart local v0       #size:I
    :cond_3
    :try_start_1
    const-string v1, "MessageLogger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Debugging_MessageLogger: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/os/MessageLogger;->mWallTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
